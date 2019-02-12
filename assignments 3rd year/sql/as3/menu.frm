VERSION 5.00
Begin VB.Form Form5 
   Caption         =   "Form5"
   ClientHeight    =   2886
   ClientLeft      =   52
   ClientTop       =   377
   ClientWidth     =   5421
   LinkTopic       =   "Form5"
   ScaleHeight     =   2886
   ScaleWidth      =   5421
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command4 
      Caption         =   "&Return"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   3276
      TabIndex        =   3
      Top             =   1638
      Width           =   1651
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&Issue"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   468
      TabIndex        =   2
      Top             =   1638
      Width           =   1651
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Borrowers"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   3276
      TabIndex        =   1
      Top             =   702
      Width           =   1651
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Books"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   468
      TabIndex        =   0
      Top             =   702
      Width           =   1651
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Unload Me
    Form1.Show
End Sub

Private Sub Command2_Click()
    Unload Me
    Form3.Show
End Sub

Private Sub Command3_Click()
    Unload Me
    Form6.Show
End Sub

Private Sub Command4_Click()
    Unload Me
    Form7.Show
End Sub
