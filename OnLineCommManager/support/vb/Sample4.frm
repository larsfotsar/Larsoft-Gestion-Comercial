VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   2385
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   1770
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2385
   ScaleWidth      =   1770
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "DownLoad"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   1680
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Disconnect"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Connect"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
   Dim CommData As Long
   Dim Connect As Integer
   ' Connect = 0 ====> Not connected
   ' Connect = 1 ====> Connected
   Dim Result As Integer
   Private Declare Function Online_ESC_Y_BYTE _
    Lib "C:\OnlineCommManager\OnlineDll.Dll" _
    Alias "Online_ESC_Y" _
    (ByVal CommData As Long, _
     ByVal tAdd As Integer, _
     ByRef bDat As Byte, _
     ByRef bLen As Byte) As Integer
   Private Sub Form_Load()
   CommData = Online_Create()
   Connect = 0
   If CommData <> 0 Then
   Result = Online_SetupEx(CommData, 1, Asc("7"), Asc("1"), Asc("N"))
   'Suppose Result = 1
   End If
   End Sub
   Private Sub Form_Unload(Cancel As Integer)
   If CommData <> 0 Then
   Call Online_Destroy(CommData)
   CommData = 0
   Connect = 0
   End If
   End Sub
   Private Sub Command1_Click()
   'Connect
   If (CommData <> 0) And (Connect = 0) Then
   Connect = Online_Connect(CommData)
   End If
   MsgBox Connect
   End Sub
   Private Sub Command2_Click()
   'Disconnect
   If (CommData <> 0) And (Connect = 1) Then
   Call Online_Disconnect(CommData)
   Connect = 0
   End If
   MsgBox Connect
   End Sub
   Private Sub Command3_Click()
   'DownLoad
   Dim NameStr As String
   Dim FileLen As Long
   Dim TextAsc(120) As Byte
   '120 is large enough, no more
   Dim TextLen As Byte
   Dim Count As Byte
   If (CommData = 0) Or (Connect = 0) Then Exit Sub
   NameStr = "C:\OnlineCommManager\Vb\Sample.txt"
   Open NameStr For Binary Access Read As #1 Len = 1
   'Suppose File Exists
   FileLen = LOF(1)
   'Suppose FileLen>0
   Result = Online_ESC_L(CommData, Asc("A"), "Sample.Txt", 10)
   'Suppose Result = 1
OK:
   TextLen = 120
   If TextLen > FileLen Then TextLen = FileLen
   For Count = 1 To TextLen
   Get #1, , TextAsc(Count - 1)
   Next Count
   Result = Online_ESC_Y_BYTE(CommData, Asc("A"), TextAsc(0), TextLen)
   'Suppose Result = CmdACK (4)
   Call Online_ACK(CommData, Asc("A"))
   FileLen = FileLen - TextLen
   If FileLen > 0 Then GoTo OK
   Result = Online_ESC_Z(CommData, Asc("A"))
   'Suppose Result = CmdACK (4)
   Call Online_ACK(CommData, Asc("A"))
   Close #1
   MsgBox "File Download", , "Sample.Txt"
   End Sub

