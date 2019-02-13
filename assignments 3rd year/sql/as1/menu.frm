VERSION 5.00
Begin VB.Form menu 
   Caption         =   "menu"
   ClientHeight    =   4230
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   9915
   LinkTopic       =   "Form1"
   ScaleHeight     =   4230
   ScaleWidth      =   9915
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmddept 
      Caption         =   "Departments"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5400
      TabIndex        =   3
      Top             =   840
      Width           =   2415
   End
   Begin VB.CommandButton cmdworks 
      Caption         =   "Works"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1440
      TabIndex        =   2
      Top             =   2280
      Width           =   2415
   End
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
      Height          =   615
      Left            =   5400
      TabIndex        =   1
      Top             =   2280
      Width           =   2415
   End
   Begin VB.CommandButton cmdemp 
      Caption         =   "Employees"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1320
      TabIndex        =   0
      Top             =   840
      Width           =   2415
   End
End
Attribute VB_Name = "menu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_Click()
    Unload Me
End Sub

Private Sub cmddept_Click()
    dept.Show
    Unload Me
End Sub

Private Sub cmdemp_Click()
    employee.Show
    Unload Me
End Sub

Private Sub cmdworks_Click()
    works.Show
    Unload Me
End Sub
