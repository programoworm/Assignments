VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6032
   ClientLeft      =   52
   ClientTop       =   377
   ClientWidth     =   10699
   LinkTopic       =   "Form1"
   ScaleHeight     =   6032
   ScaleWidth      =   10699
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btn_back 
      Caption         =   "&Back"
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
      Left            =   8658
      TabIndex        =   20
      Top             =   5031
      Width           =   1534
   End
   Begin VB.CommandButton btn_clear 
      Caption         =   "&Clear"
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
      Left            =   8658
      TabIndex        =   19
      Top             =   4329
      Width           =   1534
   End
   Begin VB.CommandButton btn_delete 
      Caption         =   "&Delete"
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
      Left            =   8658
      TabIndex        =   18
      Top             =   3627
      Width           =   1534
   End
   Begin VB.CommandButton btn_update 
      Caption         =   "&Update"
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
      Left            =   8658
      TabIndex        =   17
      Top             =   2925
      Visible         =   0   'False
      Width           =   1534
   End
   Begin VB.CommandButton btn_modify 
      Caption         =   "&Modify"
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
      Left            =   8658
      TabIndex        =   16
      Top             =   2223
      Width           =   1534
   End
   Begin VB.CommandButton btn_view 
      Caption         =   "&View"
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
      Left            =   8658
      TabIndex        =   15
      Top             =   1521
      Width           =   1534
   End
   Begin VB.CommandButton btn_input 
      Caption         =   "&Input"
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
      Left            =   8658
      TabIndex        =   14
      Top             =   819
      Width           =   1534
   End
   Begin VB.TextBox tb_availability 
      DataField       =   "AVAILABILITY"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   2106
      TabIndex        =   13
      Top             =   4446
      Width           =   2587
   End
   Begin VB.TextBox tb_price 
      DataField       =   "PRICE"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   2106
      TabIndex        =   12
      Top             =   3861
      Width           =   2587
   End
   Begin VB.TextBox tb_subject 
      DataField       =   "SUBJECT"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   2106
      TabIndex        =   11
      Top             =   3276
      Width           =   2587
   End
   Begin VB.TextBox tb_author 
      DataField       =   "AUTHOR"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   2106
      TabIndex        =   10
      Top             =   2691
      Width           =   2587
   End
   Begin VB.TextBox tb_title 
      DataField       =   "TITLE"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   2106
      TabIndex        =   9
      Top             =   2106
      Width           =   2587
   End
   Begin VB.TextBox tb_bname 
      DataField       =   "BOOK_NAME"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   2106
      TabIndex        =   8
      Top             =   1521
      Width           =   4108
   End
   Begin VB.TextBox tb_bid 
      DataField       =   "BOOK_ID"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   2106
      TabIndex        =   7
      Top             =   936
      Width           =   2587
   End
   Begin VB.Label Label7 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Availability :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   702
      TabIndex        =   6
      Top             =   4446
      Width           =   1300
   End
   Begin VB.Label Label6 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Price :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   247
      Left            =   702
      TabIndex        =   5
      Top             =   3861
      Width           =   1300
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Subject :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   702
      TabIndex        =   4
      Top             =   3276
      Width           =   1300
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Author :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   247
      Left            =   702
      TabIndex        =   3
      Top             =   2691
      Width           =   1300
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Title :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   247
      Left            =   702
      TabIndex        =   2
      Top             =   2106
      Width           =   1300
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Book Name :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   247
      Left            =   585
      TabIndex        =   1
      Top             =   1521
      Width           =   1417
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Book ID :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   585
      TabIndex        =   0
      Top             =   936
      Width           =   1417
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As ADODB.Connection, cmd As ADODB.Command
Dim s As String
Dim rs As ADODB.Recordset

Private Sub btn_back_Click()
    Unload Me
    Form5.Show
End Sub

Private Sub btn_clear_Click()
    tb_author.Text = ""
    tb_availability.Text = ""
    tb_bid.Text = ""
    tb_bname.Text = ""
    tb_price.Text = ""
    tb_subject.Text = ""
    tb_title.Text = ""
End Sub

Private Sub btn_delete_Click()
    Dim id As String
    id = InputBox("Enter book ID to delete : ")
    rs.MoveFirst
    rs.Find "book_id like '" & id & "'"
    If (rs.EOF = True) Then
        MsgBox "No such record found!"
    Else
        tb_author = rs("author")
        tb_availability = CStr(rs("availability"))
        tb_bid = id
        tb_bname = rs("book_name")
        tb_price = CStr(rs("price"))
        tb_subject = rs("subject")
        tb_title = rs("title")
        If MsgBox("Do you want to delete the record?", vbQuestion + vbYesNo, App.ProductName) = vbYes Then
            rs.Delete adAffectCurrent
        End If
    End If
    btn_clear_Click
End Sub

Private Function isValid() As Boolean
    If (Len(tb_bid.Text)) = 0 Then
        MsgBox ("Book ID cannot be blank!")
        isValid = False
        tb_bid.SetFocus
    Else
        isValid = True
    End If
End Function

Private Sub btn_input_Click()
    rs.MoveFirst
    If isValid = False Then
        tb_bid.SetFocus
    Else
        If tb_price.Text = "" Then
            tb_price.Text = 0
        End If
        If tb_availability.Text = "" Then
            tb_availability.Text = 0
        End If
        s = "insert into book values ('" + tb_bid.Text + "', '" + tb_bname.Text + "', '" + tb_title.Text + "', '" + tb_author.Text + "', '" + tb_subject.Text + "', " + tb_availability.Text + ", " + tb_price.Text + ")"
        cmd.ActiveConnection = cn
        cmd.CommandText = s
        cmd.Execute
        MsgBox "Data inserted successfully!"
    End If
End Sub

Private Sub btn_modify_Click()
    Dim id As String
    id = InputBox("Insert book ID : ")
    rs.MoveFirst
    rs.Find "book_id like '" & id & "'"
    If rs.EOF = True Then
        MsgBox "No such record found!"
    Else
        tb_author.Text = rs("author")
        tb_availability.Text = CStr(rs("availability"))
        tb_bid.Text = id
        tb_bname.Text = rs("book_name")
        tb_price.Text = CStr(rs("price"))
        tb_subject.Text = rs("subject")
        tb_title.Text = rs("title")
        btn_update.Visible = True
    End If
End Sub

Private Sub btn_update_Click()
    rs("author") = tb_author.Text
    rs("availability") = Val(tb_availability.Text)
    rs("book_id") = tb_bid.Text
    rs("book_name") = tb_bname.Text
    rs("price") = Val(tb_price.Text)
    rs("subject") = tb_subject.Text
    rs("title") = tb_title.Text
    rs.Update
    MsgBox "Record successfully updated!"
    btn_update.Visible = False
End Sub

Private Sub btn_view_Click()
    Unload Me
    Form2.Show
End Sub

Private Sub Form_Load()
    Set cn = New ADODB.Connection
    Set cmd = New ADODB.Command
    Set rs = New ADODB.Recordset
    cn.Open "PROVIDER=OraOLEDB.Oracle;User ID=scott;Persist Security Info=False", "scott", "tiger"
    rs.Open "select * from book", cn, adOpenDynamic, adLockOptimistic
End Sub
