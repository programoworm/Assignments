VERSION 5.00
Begin VB.Form Menu 
   Caption         =   "Choose form to view"
   ClientHeight    =   2805
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4785
   LinkTopic       =   "Form1"
   ScaleHeight     =   2805
   ScaleWidth      =   4785
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmd 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1800
      TabIndex        =   3
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   1170
      Top             =   234
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Attendance"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   2691
      TabIndex        =   1
      Top             =   1053
      Width           =   1417
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Students"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   702
      TabIndex        =   0
      Top             =   1053
      Width           =   1417
   End
   Begin VB.Label lbl_time 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "time"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   1638
      TabIndex        =   2
      Top             =   351
      Width           =   1651
   End
End
Attribute VB_Name = "Menu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_Click()
    Unload Me
End Sub

Private Sub Command1_Click()
    Unload Me
    Student.Show
End Sub

Private Sub Command2_Click()
    Unload Me
    Attends.Show
End Sub

Private Sub Form_Load()
    lbl_time.Caption = Format(Time, "hh:mm:ss AM/PM")
End Sub


Private Sub Timer1_Timer()
    lbl_time.Caption = Format(Time, "hh:mm:ss AM/PM")
End Sub
