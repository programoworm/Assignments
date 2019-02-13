VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   4589
   ClientLeft      =   52
   ClientTop       =   377
   ClientWidth     =   8983
   LinkTopic       =   "Form3"
   ScaleHeight     =   4589
   ScaleWidth      =   8983
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
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
      Height          =   364
      Left            =   3861
      TabIndex        =   14
      Top             =   3978
      Width           =   1300
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
      Height          =   364
      Left            =   7371
      TabIndex        =   13
      Top             =   3276
      Width           =   1183
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
      Height          =   364
      Left            =   5967
      TabIndex        =   12
      Top             =   3276
      Width           =   1183
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
      Height          =   364
      Left            =   4563
      TabIndex        =   11
      Top             =   3276
      Visible         =   0   'False
      Width           =   1183
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
      Height          =   364
      Left            =   3159
      TabIndex        =   10
      Top             =   3276
      Width           =   1183
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
      Height          =   364
      Left            =   1755
      TabIndex        =   9
      Top             =   3276
      Width           =   1183
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
      Height          =   364
      Left            =   351
      TabIndex        =   8
      Top             =   3276
      Width           =   1183
   End
   Begin VB.TextBox tb_phone 
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
      Left            =   4095
      TabIndex        =   7
      Top             =   2457
      Width           =   2236
   End
   Begin VB.TextBox tb_city 
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
      Left            =   4095
      TabIndex        =   6
      Top             =   1872
      Width           =   2236
   End
   Begin VB.TextBox tb_bname 
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
      Left            =   4095
      TabIndex        =   5
      Top             =   1287
      Width           =   2236
   End
   Begin VB.TextBox tb_bid 
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
      Left            =   4095
      TabIndex        =   4
      Top             =   702
      Width           =   2236
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Phone :"
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
      Left            =   1638
      TabIndex        =   3
      Top             =   2457
      Width           =   2236
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "City :"
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
      Left            =   1638
      TabIndex        =   2
      Top             =   1872
      Width           =   2236
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Borrower Name :"
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
      Left            =   1638
      TabIndex        =   1
      Top             =   1287
      Width           =   2236
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Borrower ID :"
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
      Left            =   1638
      TabIndex        =   0
      Top             =   702
      Width           =   2236
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As ADODB.Connection, cmd As ADODB.Command
Dim s As String
Dim rs As ADODB.Recordset

Private Sub btn_clear_Click()
    tb_bid.Text = ""
    tb_bname.Text = ""
    tb_city.Text = ""
    tb_phone.Text = ""
End Sub

Private Sub btn_view_Click()
    Unload Me
    Form4.Show
End Sub

Private Sub Command1_Click()
    Unload Me
    Form5.Show
End Sub

Private Sub tb_phone_KeyPress(KeyAscii As Integer)
    If (KeyAscii >= Asc("0") And KeyAscii <= Asc("9")) Or KeyAscii = 8 Then
        KeyAscii = KeyAscii
    Else
        MsgBox "Phone number can only contain digits!"
        KeyAscii = 0
    End If
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

Private Sub btn_delete_Click()
    Dim id As String
    id = InputBox("Enter borrower ID to delete : ")
    rs.MoveFirst
    rs.Find "brwr_id like '" & id & "'"
    If (rs.EOF = True) Then
        MsgBox "No such record found!"
    Else
        tb_phone.Text = CStr(rs("phone"))
        tb_bid.Text = id
        tb_bname.Text = rs("brwr_name")
        tb_city.Text = rs("city")
        If MsgBox("Do you want to delete the record?", vbQuestion + vbYesNo, App.ProductName) = vbYes Then
            rs.Delete adAffectCurrent
            MsgBox "Record deleted successfully!"
        End If
    End If
    btn_clear_Click
End Sub

Private Sub btn_input_Click()
    rs.MoveFirst
    If isValid = False Then
        tb_bid.SetFocus
    Else
        If tb_phone.Text = "" Then
            tb_phone.Text = 0
        End If
        s = "insert into borrower values ('" + tb_bid.Text + "', '" + tb_bname.Text + "', '" + tb_city.Text + "', " + tb_phone.Text + ")"
        cmd.ActiveConnection = cn
        cmd.CommandText = s
        cmd.Execute
        rs.Resync
        MsgBox "Data inserted successfully!"
    End If
End Sub

Private Sub btn_modify_Click()
    Dim id As String
    id = InputBox("Insert borrower ID : ")
    rs.MoveFirst
    rs.Find "brwr_id like '" & id & "'"
    If rs.EOF = True Then
        MsgBox "No such record found!"
        btn_update.Visible = False
    Else
        tb_phone.Text = CStr(rs("phone"))
        tb_bid.Text = id
        tb_city.Text = rs("city")
        tb_bname = rs("brwr_name")
        btn_update.Visible = True
    End If
End Sub

Private Sub btn_update_Click()
    rs("brwr_id") = tb_bid.Text
    rs("brwr_name") = tb_bname.Text
    rs("phone") = Val(tb_phone.Text)
    rs("city") = tb_city.Text
    rs.Update
    MsgBox "Record successfully updated!"
    btn_update.Visible = False
End Sub


Private Sub Form_Load()
    Set cn = New ADODB.Connection
    Set cmd = New ADODB.Command
    Set rs = New ADODB.Recordset
    cn.Open "PROVIDER=OraOLEDB.Oracle;User ID=scott;Persist Security Info=False", "scott", "tiger"
    rs.Open "select * from borrower", cn, adOpenDynamic, adLockOptimistic
End Sub
