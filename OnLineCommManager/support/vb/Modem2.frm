VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3720
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5745
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3720
   ScaleWidth      =   5745
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   2000
      Left            =   3840
      Top             =   3120
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Stop Wait"
      Height          =   375
      Left            =   3840
      TabIndex        =   4
      Top             =   2400
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "WaitForCall"
      Height          =   375
      Left            =   3840
      TabIndex        =   3
      Top             =   1680
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Disconnect"
      Height          =   375
      Left            =   3840
      TabIndex        =   2
      Top             =   960
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Connect"
      Height          =   375
      Left            =   3840
      TabIndex        =   1
      Top             =   240
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   3180
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
   Private Declare Function Online_Create Lib "C:\OnlineCommManager\OnlineDll.Dll" _
          () As Long
   Private Declare Sub Online_Destroy Lib "C:\OnlineCommManager\OnlineDll.Dll" _
          (ByVal CommData As Long)
   Private Declare Function Online_SetupEx Lib "C:\OnlineCommManager\OnlineDll.Dll" _
          (ByVal CommData As Long, _
           ByVal Port As Integer, _
           ByVal Baud As Integer, _
           ByVal Stops As Integer, _
           ByVal Parity As Integer) As Integer
   Private Declare Function Online_Connect Lib "C:\OnlineCommManager\OnlineDll.Dll" _
          (ByVal CommData As Long) As Integer
   Private Declare Sub Online_Disconnect Lib "C:\OnlineCommManager\OnlineDll.Dll" _
          (ByVal CommData As Long)
   Private Declare Function Online_ModemWaitForCall Lib "C:\OnlineCommManager\OnlineDll.Dll" _
          (ByVal CommData As Long, ByVal Delay As Long, ByVal hList As Long, _
           ByVal Msg As String, ByVal nMax As Long) As Integer
   Private Declare Sub Online_ModemATCmd Lib "C:\OnlineCommManager\OnlineDll.Dll" _
          (ByVal CommData As Long, ByVal ATCmd As String)
   Private Declare Function Online_ModemEcho Lib "C:\OnlineCommManager\OnlineDll.Dll" _
          (ByVal CommData As Long, ByVal Msg As String, ByVal nMax As Long) As Integer
   
   Private Declare Function GetTickCount Lib "kernel32" () As Long
   Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
   Private Declare Function lstrlen Lib "kernel32" Alias "lstrlenA" (ByVal lpString As String) As Long
   
   Dim CommData As Long
   Dim Connect As Integer
   ' Connect = 0 ====> Not connected
   ' Connect = 1 ====> Connected
   Dim Result As Integer
   Dim TickStart As Long
   Dim TickDelta As Long
   Private Sub Form_Load()
   CommData = 0
   Connect = 0
   CommData = Online_Create()
   If CommData <> 0 Then
   Result = Online_SetupEx(CommData, 1, Asc("7"), Asc("1"), Asc("N"))
   'Suppose Result = 1
   End If
   Timer1.Enabled = False
   End Sub
   Private Sub Form_Unload(Cancel As Integer)
   If CommData <> 0 Then
   If Connect <> 0 Then Online_Disconnect (CommData)
   Call Online_Destroy(CommData)
   CommData = 0
   End If
   End Sub
   Private Sub Command1_Click()
   'Connect
   If (CommData <> 0) And (Connect = 0) Then
   Connect = Online_Connect(CommData)
   End If
   List1.Clear
   Timer1.Enabled = False
   MsgBox Connect
   End Sub
   Private Sub Command2_Click()
   'Disconnect
   If (CommData <> 0) And (Connect = 1) Then
   Call Online_Disconnect(CommData)
   Connect = 0
   End If
   List1.Clear
   Timer1.Enabled = False
   MsgBox Connect
   End Sub
   Private Sub Command3_Click()
   ' Wait
   Dim ATCmd As String
   Dim EchoStr As String
   If (CommData <> 0) And (Connect = 1) Then
   List1.Clear
   ATCmd = "ATS=2"
   ' Automatically pick up the phone after 2 RINGs detected
   Call Online_ModemATCmd(CommData, ATCmd)
   Sleep (1000) 'Wait for 1 second
   EchoStr = Space(256)
   Do
      Result = Online_ModemEcho(CommData, EchoStr, 256)
      If lstrlen(EchoStr) > 0 Then List1.AddItem (EchoStr)
   Loop While lstrlen(EchoStr) > 0
   Timer1.Enabled = True
   TickStart = GetTickCount()
   End If
   End Sub
   Private Sub Command4_Click()
   ' Stop
   Dim ATCmd As String
   Dim EchoStr As String
   If (CommData <> 0) And (Connect = 1) Then
   List1.Clear
   Timer1.Enabled = False
   ATCmd = "ATS=0"
   Call Online_ModemATCmd(CommData, ATCmd)
'   Sleep (1000) 'Wait for 1 second
   EchoStr = Space(256)
   Do
      Result = Online_ModemEcho(CommData, EchoStr, 256)
      If lstrlen(EchoStr) > 0 Then List1.AddItem (EchoStr)
   Loop While lstrlen(EchoStr) > 0
   End If
   End Sub
   Private Sub Timer1_Timer()
   Dim EchoStr As String
   Dim Echo As Integer
 
   If (CommData <> 0) And (Connect = 1) Then
   TickDelta = GetTickCount()
   If TickStart > TickDelta Then TickStart = TickDelta
   TickDelta = TickDelta - TickStart
      If TickDelta > 2000 Then
         Echo = 0
         EchoStr = Space(256)
         Do
            Result = Online_ModemEcho(CommData, EchoStr, 256)
            If Result > 0 Then Echo = Result
            If lstrlen(EchoStr) > 0 Then List1.AddItem (EchoStr)
         Loop While lstrlen(EchoStr) > 0
         If Echo = 2 Then
         Timer1.Enabled = False
         MsgBox "Connected"
         End If
      End If
   End If
   End Sub
