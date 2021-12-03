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
      Caption         =   "Check File"
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
   'Check
   Dim StatNam As String * 256
   Dim StatLen As Byte
   Dim Stat    As String
   
   StatNam = "Sample.TXT"
   StatLen = 10
   If (CommData = 0) Or (Connect = 0) Then Exit Sub
   Result = Online_ESC_J(CommData, Asc("A"), StatNam, StatLen)
   Stat = Left(StatNam, StatLen)
   MsgBox Result
   MsgBox Stat, , "Check File Stat Sample.Txt"
   End Sub

