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
      Caption         =   "Upload"
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
   'UpLoad
   Dim NameStr As String
   Dim TextAsc(120) As Byte
   '120 is large enough, no more
   Dim TextLen As Byte
   Dim Count As Byte
   
   If (CommData = 0) Or (Connect = 0) Then Exit Sub
   NameStr = "C:\OnlineCommManager\Vb\Sample.txt"
   Open NameStr For Binary Access Write As #1 Len = 1
   Result = Online_ESC_U(CommData, Asc("A"), "Sample.Txt", 10)
   If Result <> 4 Then Exit Sub
   'CmdACK is a constant = 4
OK:
   Result = Online_ESC_Y_BYTE(CommData, Asc("A"), TextAsc(0), TextLen)
   If Result = 1 Then
    Call Online_ACK(CommData, Asc("A"))
    If TextLen > 0 Then
    For Count = 1 To TextLen
    Put #1, , TextAsc(Count - 1)
    Next Count
    End If
    GoTo OK
   End If
   If Result = 3 Then
    'CmdEOF is a constant = 3
    Call Online_ACK(CommData, Asc("A"))
   Else
    MsgBox "Error", , "UpLoad"
   End If
   Close #1
   MsgBox "File Upload", , "Sample.Txt"
   End Sub

