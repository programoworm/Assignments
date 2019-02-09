VERSION 5.00
Begin VB.Form Student 
   Caption         =   "Student Records"
   ClientHeight    =   4965
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   6840
   LinkTopic       =   "Form1"
   ScaleHeight     =   4965
   ScaleWidth      =   6840
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btn_view 
      Caption         =   "&View"
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
      Left            =   5031
      TabIndex        =   14
      Top             =   3861
      Width           =   1183
   End
   Begin VB.CommandButton btn_input 
      Caption         =   "&Input"
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
      Left            =   2925
      TabIndex        =   13
      Top             =   3861
      Width           =   1183
   End
   Begin VB.CommandButton btn_back 
      Caption         =   "&Back"
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
      TabIndex        =   12
      Top             =   3861
      Width           =   1183
   End
   Begin VB.OptionButton opt_bba 
      Caption         =   "B.B.A."
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
      Left            =   3978
      TabIndex        =   11
      Top             =   2691
      Width           =   1183
   End
   Begin VB.OptionButton opt_msc 
      Caption         =   "M.Sc."
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
      Left            =   2925
      TabIndex        =   10
      Top             =   2691
      Width           =   949
   End
   Begin VB.OptionButton opt_bcom 
      Caption         =   "B. Com."
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
      Left            =   5148
      TabIndex        =   9
      Top             =   2106
      Width           =   1183
   End
   Begin VB.OptionButton opt_bsc 
      Caption         =   "B.Sc."
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
      Left            =   3978
      TabIndex        =   8
      Top             =   2106
      Width           =   949
   End
   Begin VB.OptionButton opt_ba 
      Caption         =   "B.A."
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
      Left            =   2925
      TabIndex        =   7
      Top             =   2106
      Width           =   832
   End
   Begin VB.TextBox tb_year 
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
      Left            =   2925
      TabIndex        =   6
      Top             =   3159
      Width           =   2353
   End
   Begin VB.TextBox tb_name 
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
      Left            =   2925
      TabIndex        =   5
      Top             =   1521
      Width           =   2353
   End
   Begin VB.TextBox tb_roll 
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
      Left            =   2925
      TabIndex        =   4
      Top             =   936
      Width           =   2353
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Year :"
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
      Left            =   1404
      TabIndex        =   3
      Top             =   3159
      Width           =   1417
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Course :"
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
      Left            =   1404
      TabIndex        =   2
      Top             =   2106
      Width           =   1417
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Name :"
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
      Left            =   1404
      TabIndex        =   1
      Top             =   1521
      Width           =   1417
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Roll No. :"
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
      Left            =   1404
      TabIndex        =   0
      Top             =   936
      Width           =   1417
   End
End
Attribute VB_Name = "Student"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As ADODB.Connection
Dim rs As ADODB.Recordset

Private Sub btn_back_Click()
    Unload Me
    Menu.Show
End Sub

Private Sub btn_input_Click()
    Dim id As String
    id = tb_roll.Text
    rs.MoveFirst
    rs.Find "roll = " + id
    If rs.EOF = False Then
        MsgBox "Student with the given roll already exists!", vbCritical, "Error"
        rs.MoveFirst
    Else
        rs.AddNew
        rs("roll") = Val(tb_roll.Text)
        rs("sname") = tb_name.Text
        rs("course") = GetCourse()
        rs("yr") = Val(tb_year.Text)
        rs.Update
        MsgBox "Record inserted successfully!", vbInformation, "Success"
        rs.MoveFirst
    End If
    Display
End Sub

Private Sub btn_view_Click()
    Unload Me
    StudentView.Show
End Sub

Private Sub Form_Load()
    Set cn = New ADODB.Connection
    cn.Open "Provider=ORAOLEDB.Oracle;", "scott", "tiger"
    Set rs = New ADODB.Recordset
    rs.Open "select * from students", cn, adOpenDynamic, adLockOptimistic
    Display
End Sub

Private Sub Display()
    tb_name.Text = rs("sname")
    tb_roll.Text = CStr(rs("roll"))
    tb_year.Text = CStr(rs("yr"))
    Dim s As String
    s = rs("course")
    opt_ba.Value = s = "BA"
    opt_bba.Value = s = "BBA"
    opt_bcom.Value = s = "BCom"
    opt_bsc.Value = s = "BSc"
    opt_msc.Value = s = "MSc"
End Sub

Private Function GetCourse()
    If opt_ba.Value Then
        GetCourse = "BA"
    ElseIf opt_bba.Value Then
        GetCourse = "BBA"
    ElseIf opt_bcom.Value Then
        GetCourse = "BCom"
    ElseIf opt_bsc.Value Then
        GetCourse = "BSc"
    Else
        GetCourse = "MSc"
    End If
End Function


Private Sub tb_roll_KeyPress(KeyAscii As Integer)
    If KeyAscii >= Asc("0") And KeyAscii <= Asc("9") Or KeyAscii = 8 Then
        KeyAscii = KeyAscii
    Else
        KeyAscii = 0
        MsgBox "Insert only numbers!", vbCritical, "Error"
    End If
End Sub


Private Sub tb_year_KeyPress(KeyAscii As Integer)
    If KeyAscii >= Asc("0") And KeyAscii <= Asc("9") Or KeyAscii = 8 Then
        KeyAscii = KeyAscii
    Else
        KeyAscii = 0
        MsgBox "Insert only numbers!", vbCritical, "Error"
    End If
End Sub

