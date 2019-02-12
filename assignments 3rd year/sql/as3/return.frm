VERSION 5.00
Begin VB.Form Form7 
   Caption         =   "Form7"
   ClientHeight    =   4410
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5985
   LinkTopic       =   "Form7"
   ScaleHeight     =   4410
   ScaleWidth      =   5985
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btn_cal_fine 
      Caption         =   "&Calculate Fine"
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
      Left            =   2040
      TabIndex        =   10
      Top             =   3720
      Width           =   1768
   End
   Begin VB.CommandButton btn_ret 
      Caption         =   "&Return"
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
      Left            =   4080
      TabIndex        =   9
      Top             =   3720
      Width           =   1417
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
      Height          =   364
      Left            =   360
      TabIndex        =   8
      Top             =   3720
      Width           =   1417
   End
   Begin VB.TextBox tb_return_date 
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
      Left            =   3045
      TabIndex        =   7
      Text            =   "N/A"
      Top             =   2940
      Width           =   1534
   End
   Begin VB.TextBox tb_issue_date 
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
      Left            =   3045
      TabIndex        =   6
      Text            =   "N/A"
      Top             =   2355
      Width           =   1534
   End
   Begin VB.TextBox tb_book_id 
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
      Left            =   3045
      TabIndex        =   5
      Text            =   "N/A"
      Top             =   1770
      Width           =   1534
   End
   Begin VB.TextBox tb_brwr_id 
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
      Left            =   3045
      TabIndex        =   4
      Text            =   "N/A"
      Top             =   1185
      Width           =   1534
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Return Date :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   1065
      TabIndex        =   3
      Top             =   2940
      Width           =   1890
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Issue Date :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   1065
      TabIndex        =   2
      Top             =   2355
      Width           =   1890
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Book ID :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   1065
      TabIndex        =   1
      Top             =   1770
      Width           =   1890
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Borrower ID :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   1065
      TabIndex        =   0
      Top             =   1185
      Width           =   1890
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As ADODB.Connection, cmd As ADODB.Command
Dim s, id1, id2 As String
Dim rs1, rs2 As ADODB.Recordset

Private Sub Command1_Click()
    Unload Me
    Form5.Show
End Sub

Private Sub btn_back_Click()
    Unload Me
    Form5.Show
End Sub

Private Sub btn_cal_fine_Click()
Dim t As Integer
s = DateDiff("D", tb_issue_date.Text, tb_return_date.Text)
If s > 14 Then
    t = CStr((s - 14) * 1.5)
    MsgBox "Total fine to be paid is " & t & ""
Else
    finetxt.Text = "0"
End If
End Sub

Private Sub btn_ret_Click()
    If tb_book_id = "" Or tb_brwr_id = "" Or tb_issue_date = "" Or tb_return_date = "" Then
        MsgBox "Please enter the required value!!"
    Else
        rs2("book_id") = tb_book_id.Text
        rs2("brwr_id") = tb_brwr_id.Text
        rs2("do_issue") = CDate(tb_issue_date.Text)
        rs2("do_return") = CDate(tb_return_date.Text)
        rs2.Update
        rs1.Find "book_id like '" & tb_book_id.Text & "'"
        rs1.Fields("availability") = (rs1.Fields("availability") + 1)
        rs1.Update
        MsgBox "Book has been successfully returned."
        tb_book_id = ""
        tb_brwr_id = ""
        tb_issue_date = ""
        tb_return_date = ""
    End If
End Sub

Private Sub Form_Load()
    id1 = InputBox("Enter book ID to return : ")
    id2 = InputBox("Enter borrower ID to whom the book was issued : ")
    
    Set cn = New ADODB.Connection
    Set cmd = New ADODB.Command
    Set rs1 = New ADODB.Recordset
    Set rs2 = New ADODB.Recordset
    rs2.CursorLocation = adUseClient
    cn.Open "PROVIDER=OraOLEDB.Oracle;User ID=scott;Persist Security Info=False", "scott", "tiger"
    rs1.Open "select * from book", cn, adOpenDynamic, adLockOptimistic
    rs2.Open "select * from borrows where brwr_id like '" & id2 & "' and book_id like '" & id1 & "' and do_return is null", cn, adOpenDynamic, adLockOptimistic
    If rs2.RecordCount <> 0 Then
        tb_book_id = id1
        tb_brwr_id = id2
        tb_issue_date = rs2("do_issue")
        tb_return_date = Date
    ElseIf rs2.RecordCount = 0 Then
        MsgBox "No such pending return exists", vbInformation
    End If
End Sub

