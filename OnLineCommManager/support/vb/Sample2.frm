VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   1935
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4215
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   4215
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "9600 bps"
      Height          =   495
      Left            =   2280
      TabIndex        =   3
      Top             =   1080
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "4800 bps"
      Height          =   495
      Left            =   2280
      TabIndex        =   2
      Top             =   240
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Disconnect"
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   1080
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Connect"
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1815
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
   Dim Speed As Integer
   ' Speed = 0        ====> Not Setup
   ' Speed = Asc("6") ====> 4800 bps
   ' Speed = Asc("7") ====> 9600 bps
   Dim ComConfig As COMCFG
   Dim Result As Integer
   Private Sub Form_Load()
   Speed = 0
   ComConfig.BaudRate = 0
   ComConfig.StopBits = Asc("1")
   ComConfig.DataBits = Asc("8")
   ComConfig.Parity = Asc("N")
   ComConfig.Protocol = Asc("M")
   ComConfig.Address = Asc("A")
   ComConfig.TimeOut(0) = Asc("0")
   ComConfig.TimeOut(1) = Asc("4")
   ComConfig.FlowCtrl = Asc("C")
   CommData = Online_Create()
   Connect = 0
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
   If Speed = 0 Then
   MsgBox "Press 4800bps or 9600 bps"
   Else
   If (CommData <> 0) And (Connect = 0) Then
   Connect = Online_Connect(CommData)
   End If
   MsgBox Connect
   End If
   End Sub
   Private Sub Command2_Click()
   'Disconnect
   If (CommData <> 0) And (Connect = 1) Then
   Call Online_Disconnect(CommData)
   Connect = 0
   MsgBox Connect
   End If
   End Sub
   Private Sub Command3_Click()
   '4800
   If CommData <> 0 Then
   Speed = Asc("6") '4800 bps
   If Connect = 1 Then
   ComConfig.BaudRate = Speed
   Result = Online_ESC_CCFG(CommData, Asc("A"), ComConfig, Len(ComConfig))
   End If
   Result = Online_SetupEx(CommData, 1, Speed, 49, 78)
   MsgBox Result
   End If
   End Sub
   Private Sub Command4_Click()
   '9600
   If CommData <> 0 Then
   Speed = Asc("7") '9600 bps
   If Connect = 1 Then
   ComConfig.BaudRate = Speed
   Result = Online_ESC_CCFG(CommData, Asc("A"), ComConfig, Len(ComConfig))
   End If
   Result = Online_SetupEx(CommData, 1, Speed, 49, 78)
   MsgBox Result
   End If
   End Sub

