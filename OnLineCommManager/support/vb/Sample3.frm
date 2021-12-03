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
   Begin VB.CommandButton Command4 
      Caption         =   "SetDateTime"
      Height          =   375
      Left            =   3840
      TabIndex        =   4
      Top             =   2400
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Dir"
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
      Sorted          =   -1  'True
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
   Dim CommData As Long
   Dim Connect As Integer
   ' Connect = 0 ====> Not connected
   ' Connect = 1 ====> Connected
   Dim Result As Integer
   Dim FindStru As String * 280
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
   List1.Clear
   MsgBox Connect
   End Sub
   Private Sub Command3_Click()
   Dim NameLen As Byte
   Dim NameStr As String * 32
   Dim Name    As String
   List1.Clear
   If (CommData = 0) Or (Connect = 0) Then Exit Sub
   Result = Online_FindFirst(CommData, Asc("A"), FindStru, NameStr, NameLen)
   If Result <> 1 Then Exit Sub
OK:
   Name = Left(NameStr, NameLen)
   List1.AddItem (Name)
   Result = Online_FindNext(CommData, Asc("A"), FindStru, NameStr, NameLen)
   If (Result = 1) And (NameLen > 0) Then GoTo OK
   End Sub
   Private Sub Command4_Click()
   Dim DateTimeStr     As String * 16
   If (CommData = 0) Or (Connect = 0) Then Exit Sub
   DateTimeStr = Format(Now, "yyyymmddhhnnss")
   Result = Online_ESC_M(CommData, Asc("A"), DateTimeStr)
   If Result = 6 Then Call Online_ACK(CommData, Asc("A"))
   MsgBox Result
   End Sub

