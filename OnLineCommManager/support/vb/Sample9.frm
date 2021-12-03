VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   3960
      Top             =   2400
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Polling"
      Height          =   375
      Left            =   1740
      TabIndex        =   1
      Top             =   2400
      Width           =   1095
   End
   Begin VB.ListBox List1 
      Height          =   1815
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   4095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
   Dim CommData As Long
   Dim VerStr As String * 256
   Dim Version As String
   Dim DataStr As String * 256
   Dim Data As String
   Dim Length As Byte
   Dim Result As Integer
   Private Sub Form_Load()
   CommData = Online_Create()
   If CommData <> 0 Then
   Result = Online_SetupEx(CommData, 1, Asc("7"), Asc("1"), Asc("N"))
'  Com 1
'  9600 bps
'  1 Stop Bit
'  None Parity
   Result = Online_Connect(CommData)
   If Result = 1 Then
   Result = Online_GetVersion(CommData, Asc("A"), VerStr, Length)
   Version = Left(VerStr, Length)
   MsgBox Version
   Else
   Call Online_Destroy(CommData)
   CommData = 0
   End If
   End If
   End Sub
   Private Sub Form_Unload(Cancel As Integer)
   If CommData <> 0 Then
   Call Online_Destroy(CommData)
   CommData = 0
   End If
   End Sub
   Private Sub Command1_Click()
   If CommData = 0 Then
   MsgBox "Connect Error"
   End
   Else
   If Timer1 = True Then
   Timer1 = False
   Command1.Caption = "Polling"
   Else
   Timer1 = True
   Command1.Caption = "Pause"
   End If
   End If
   End Sub
   Private Sub Timer1_Timer()
   If CommData <> 0 Then
OK:
   Result = Online_POLL(CommData, Asc("A"), DataStr, Length)
   If (Result = 1) Or (Result = 2) Then
   Call Online_ACK(CommData, Asc("A"))
   If Result = 1 Then
   Data = Left(DataStr, Length)
   List1.AddItem (Data)
   List1.ListIndex = List1.ListCount - 1
   GoTo OK
   End If
   End If
   End If
   End Sub

