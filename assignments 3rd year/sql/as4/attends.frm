VERSION 5.00
Object = "{8E27C92E-1264-101C-8A2F-040224009C02}#7.0#0"; "MSCAL.OCX"
Begin VB.Form Attends 
   Caption         =   "Details of attendance"
   ClientHeight    =   4740
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   6420
   LinkTopic       =   "Form1"
   ScaleHeight     =   12495
   ScaleWidth      =   22920
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox tb_subject 
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
      Left            =   3042
      TabIndex        =   11
      Top             =   1755
      Width           =   2119
   End
   Begin MSACAL.Calendar Calendar1 
      Height          =   2236
      Left            =   3042
      TabIndex        =   9
      Top             =   2340
      Visible         =   0   'False
      Width           =   3276
      _Version        =   524288
      _ExtentX        =   5768
      _ExtentY        =   3942
      _StockProps     =   1
      BackColor       =   -2147483633
      Year            =   2019
      Month           =   2
      Day             =   5
      DayLength       =   1
      MonthLength     =   2
      DayFontColor    =   0
      FirstDay        =   1
      GridCellEffect  =   1
      GridFontColor   =   10485760
      GridLinesColor  =   -2147483632
      ShowDateSelectors=   -1  'True
      ShowDays        =   -1  'True
      ShowHorizontalGrid=   -1  'True
      ShowTitle       =   0   'False
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
      Height          =   364
      Left            =   4329
      TabIndex        =   8
      Top             =   3978
      Width           =   1534
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
      Height          =   364
      Left            =   2340
      TabIndex        =   7
      Top             =   3978
      Width           =   1534
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
      Left            =   351
      TabIndex        =   6
      Top             =   3978
      Width           =   1534
   End
   Begin VB.CommandButton btn_date 
      Caption         =   "06/02/2019"
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
      Left            =   3042
      TabIndex        =   5
      Top             =   2340
      Width           =   1534
   End
   Begin VB.TextBox tb_tid 
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
      Left            =   3042
      TabIndex        =   4
      Top             =   1170
      Width           =   2119
   End
   Begin VB.TextBox tb_sid 
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
      Left            =   3042
      TabIndex        =   3
      Top             =   585
      Width           =   2119
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Subject :"
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
      Left            =   1170
      TabIndex        =   10
      Top             =   1755
      Width           =   1768
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Date :"
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
      Left            =   1170
      TabIndex        =   2
      Top             =   2340
      Width           =   1768
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Teacher ID :"
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
      Left            =   1170
      TabIndex        =   1
      Top             =   1170
      Width           =   1768
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Student ID :"
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
      Left            =   1170
      TabIndex        =   0
      Top             =   585
      Width           =   1768
   End
End
Attribute VB_Name = "Attends"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As ADODB.Connection
Dim rs As ADODB.Recordset
Dim temp As ADODB.Recordset

Private Sub btn_back_Click()
    Unload Me
    Menu.Show
End Sub

Private Sub btn_date_Click()
    btn_date.Visible = False
    Calendar1.Visible = True
End Sub

Private Sub btn_input_Click()
    If tb_sid.Text = "" Then
        MsgBox "Roll can not be empty!", vbCritical
    ElseIf tb_subject.Text = "" Then
        MsgBox "Subject can not be empty!", vbCritical
    ElseIf tb_tid.Text = "" Then
        MsgBox "Teacher ID can not be empty!", vbCritical
    Else
        cn.Execute "insert into attends values (" + tb_sid.Text + ", " + tb_tid.Text + ", '" + tb_subject.Text + "', '" + Format(btn_date.Caption, "YYYY-MM-DD") + "')"
        MsgBox "Record inserted successfully!", vbInformation
    End If
End Sub

Private Sub btn_view_Click()
    Unload Me
    AttendsView.Show
End Sub

Private Sub Calendar1_Click()
    Calendar1.Visible = False
    btn_date.Caption = Format(Calendar1.Value, "DD-MM-YYYY")
    btn_date.Visible = True
End Sub

Private Sub Form_Load()
    Set cn = New ADODB.Connection
    Set rs = New ADODB.Recordset
    cn.Open "Provider=ORAOLEDB.Oracle;", "scott", "tiger"
    rs.Open "select roll, tid, subject, to_char(dt, 'DD-MM-YYYY') as chardate from attends", cn, adOpenDynamic, adLockOptimistic
    Display
End Sub

Private Sub Display()
    tb_sid.Text = CStr(rs("roll"))
    tb_tid.Text = CStr(rs("tid"))
    tb_subject.Text = rs("subject")
    btn_date.Caption = rs("chardate")
End Sub

Private Sub tb_sid_KeyPress(KeyAscii As Integer)
    If KeyAscii >= Asc("0") And KeyAscii <= Asc("9") Or KeyAscii = 8 Then
        KeyAscii = KeyAscii
    Else
        KeyAscii = 0
        MsgBox "Insert only numbers!", vbCritical, "Error"
    End If
End Sub

Private Sub tb_tid_KeyPress(KeyAscii As Integer)
    If KeyAscii >= Asc("0") And KeyAscii <= Asc("9") Or KeyAscii = 8 Then
        KeyAscii = KeyAscii
    Else
        KeyAscii = 0
        MsgBox "Insert only numbers!", vbCritical, "Error"
    End If
End Sub

