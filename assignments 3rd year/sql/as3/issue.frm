VERSION 5.00
Object = "{8E27C92E-1264-101C-8A2F-040224009C02}#7.0#0"; "MSCAL.OCX"
Begin VB.Form Form6 
   Caption         =   "Form6"
   ClientHeight    =   4110
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   7020
   LinkTopic       =   "Form6"
   ScaleHeight     =   4110
   ScaleWidth      =   7020
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btn_issue 
      Caption         =   "&Issue"
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
      Left            =   3744
      TabIndex        =   8
      Top             =   2691
      Width           =   1651
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
      Left            =   1053
      TabIndex        =   7
      Top             =   2691
      Width           =   1651
   End
   Begin MSACAL.Calendar Calendar1 
      Height          =   2236
      Left            =   2808
      TabIndex        =   6
      Top             =   1755
      Visible         =   0   'False
      Width           =   3991
      _Version        =   524288
      _ExtentX        =   7038
      _ExtentY        =   3942
      _StockProps     =   1
      BackColor       =   -2147483633
      Year            =   2019
      Month           =   1
      Day             =   29
      DayLength       =   0
      MonthLength     =   2
      DayFontColor    =   0
      FirstDay        =   1
      GridCellEffect  =   1
      GridFontColor   =   10485760
      GridLinesColor  =   -2147483632
      ShowDateSelectors=   -1  'True
      ShowDays        =   -1  'True
      ShowHorizontalGrid=   -1  'True
      ShowTitle       =   -1  'True
      ShowVerticalGrid=   -1  'True
      TitleFontColor  =   10485760
      ValueIsNull     =   0   'False
      BeginProperty DayFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty GridFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty TitleFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.CommandButton btn_date 
      Caption         =   "Date"
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
      Left            =   2808
      TabIndex        =   5
      Top             =   1755
      Width           =   1768
   End
   Begin VB.ComboBox cmb_brwr_id 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   416
      Left            =   2808
      TabIndex        =   4
      Text            =   "Combo1"
      Top             =   1170
      Width           =   1768
   End
   Begin VB.ComboBox cmb_book_id 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   416
      Left            =   2808
      TabIndex        =   3
      Text            =   "Combo1"
      Top             =   585
      Width           =   1768
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
      Height          =   364
      Left            =   1053
      TabIndex        =   2
      Top             =   1755
      Width           =   1651
   End
   Begin VB.Label Label2 
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
      Height          =   364
      Left            =   1053
      TabIndex        =   1
      Top             =   1170
      Width           =   1651
   End
   Begin VB.Label Label1 
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
      Height          =   364
      Left            =   1053
      TabIndex        =   0
      Top             =   585
      Width           =   1651
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As ADODB.Connection, cmd As ADODB.Command
Dim s As String
Dim rs1, rs2 As ADODB.Recordset

Private Sub btn_back_Click()
    Unload Me
    Form5.Show
End Sub

Private Sub btn_date_Click()
    Calendar1.Visible = True
    btn_date.Visible = False
    btn_issue.Visible = False
End Sub

Private Sub btn_issue_Click()
    Dim id1 As String
    id1 = Format(Calendar1.Value, "YYYY-MM-DD")
    s = "insert into borrows values ('" + cmb_book_id.Text + "', '" + cmb_brwr_id.Text + "', '" + id1 + "', NULL)"
    cmd.ActiveConnection = cn
    cmd.CommandText = s
    cmd.Execute
    Set rs1 = cn.Execute("update book set availability = availability - 1 where book_id like '" & cmb_book_id.Text & "'")
    MsgBox "Book has been successfully issued to the borrower!"
    cmb_book_id.Text = ""
    cmb_brwr_id.Text = ""
End Sub

Private Sub Calendar1_Click()
    btn_date.Caption = Format(Calendar1.Value, "YYYY-MMM-DD")
    btn_date.Visible = True
    Calendar1.Visible = False
    btn_issue.Visible = True
End Sub


Private Sub Form_Load()
    Set cn = New ADODB.Connection
    Set cmd = New ADODB.Command
    Set rs1 = New ADODB.Recordset
    Set rs2 = New ADODB.Recordset
    cn.Open "PROVIDER=OraOLEDB.Oracle;User ID=scott;Persist Security Info=False", "scott", "tiger"
    rs1.Open "select * from book", cn, adOpenDynamic, adLockOptimistic
    rs2.Open "select * from borrows", cn, adOpenDynamic, adLockOptimistic
    
    Set rs1 = cn.Execute("select * from book where availability > 1")
    Do While (rs1.EOF = False)
        cmb_book_id.AddItem rs1("book_id")
        rs1.MoveNext
    Loop
    cmb_book_id.Text = ""
    
    Set rs2 = cn.Execute("select * from borrower")
    Do While (rs2.EOF = False)
        cmb_brwr_id.AddItem rs2("brwr_id")
        rs2.MoveNext
    Loop
    cmb_brwr_id.Text = ""
    
    btn_date.Caption = Format(Calendar1.Value, "DD-MMM-YY")
End Sub
