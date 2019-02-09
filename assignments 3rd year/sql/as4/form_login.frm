VERSION 5.00
Begin VB.Form form_login 
   Caption         =   "Login to the database"
   ClientHeight    =   3060
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5295
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3060
   ScaleWidth      =   5295
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btn_chng 
      Caption         =   "Change"
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
      Left            =   2808
      TabIndex        =   9
      Top             =   2106
      Width           =   1534
   End
   Begin VB.CommandButton btn_cancel 
      Caption         =   "Cancel"
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
      Left            =   819
      TabIndex        =   8
      Top             =   2106
      Width           =   1534
   End
   Begin VB.TextBox tb_nwpwd 
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
      IMEMode         =   3  'DISABLE
      Left            =   2457
      PasswordChar    =   "*"
      TabIndex        =   7
      Text            =   "12345"
      Top             =   1521
      Width           =   1885
   End
   Begin VB.CommandButton btn_chgpwd 
      Caption         =   "&Change Password"
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
      Left            =   468
      TabIndex        =   5
      Top             =   2106
      Width           =   2353
   End
   Begin VB.CommandButton btn_login 
      Caption         =   "&Login"
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
      Left            =   3276
      TabIndex        =   4
      Top             =   2106
      Width           =   1066
   End
   Begin VB.TextBox tb_pwd 
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
      IMEMode         =   3  'DISABLE
      Left            =   2457
      PasswordChar    =   "*"
      TabIndex        =   3
      Text            =   "12345"
      Top             =   936
      Width           =   1885
   End
   Begin VB.TextBox tb_username 
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
      Left            =   2457
      TabIndex        =   2
      Text            =   "admin"
      Top             =   351
      Width           =   1885
   End
   Begin VB.Label lbl_nwpwd 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "New Password  :"
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
      Left            =   468
      TabIndex        =   6
      Top             =   1521
      Width           =   1885
   End
   Begin VB.Label lbl_pwd 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Old Password  :"
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
      Left            =   585
      TabIndex        =   1
      Top             =   936
      Width           =   1768
   End
   Begin VB.Label label_username 
      BackStyle       =   0  'Transparent
      Caption         =   "Username :"
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
      Top             =   351
      Width           =   1300
   End
End
Attribute VB_Name = "form_login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim conn As ADODB.Connection
Dim rs As ADODB.Recordset

Private Sub btn_cancel_Click()
    Restore
End Sub

Private Sub btn_chgpwd_Click()
    ShowChange
End Sub

Private Sub btn_chng_Click()
    usr = tb_username.Text
    pwd = tb_pwd.Text
    nwpwd = tb_nwpwd.Text
    rs.MoveFirst
    rs.Find "username like '" + usr + "'"
    If (rs.EOF = True) Then
        MsgBox "Incorrect username or old password!", vbCritical, "Error"
    ElseIf (rs("pwd") <> pwd) Then
        MsgBox "Incorrect username or old password!", vbCritical, "Error"
    Else
        rs("pwd") = nwpwd
        rs.Update
        MsgBox "Password changed successfully!"
        Restore
    End If
    rs.MoveFirst
End Sub

Private Sub btn_login_Click()
    usr = tb_username.Text
    pwd = tb_pwd.Text
    rs.Find "username like '" + usr + "'"
    If (rs.EOF = False) Then
        If (rs("pwd") = pwd) Then
            MsgBox "Logged in successfully!", vbInformation, "Success"
            Unload Me
            Menu.Show
        Else
            MsgBox "Incorrect username or password!", vbCritical, "Error"
        End If
    Else
        MsgBox "Incorrect username or password!", vbCritical, "Error"
    End If
    rs.MoveFirst
End Sub

Private Sub Form_Load()
    Restore
    
    Set conn = New ADODB.Connection
    Set rs = New ADODB.Recordset
    
    conn.Open "Provider=OraOLEDB.Oracle", "scott", "tiger"
    rs.Open "select * from password", conn, adOpenDynamic, adLockOptimistic
    
End Sub

Private Sub Restore()
    lbl_nwpwd.Visible = False
    tb_nwpwd.Visible = False
    btn_cancel.Visible = False
    btn_chng.Visible = False
    lbl_pwd.Caption = "Password : "
    
    btn_chgpwd.Visible = True
    btn_login.Visible = True
End Sub

Private Sub ShowChange()
    lbl_nwpwd.Visible = True
    tb_nwpwd.Visible = True
    btn_cancel.Visible = True
    btn_chng.Visible = True
    lbl_pwd.Caption = "Old Password : "
    
    btn_chgpwd.Visible = False
    btn_login.Visible = False
End Sub

Private Sub Form_Terminate()
    rs.Close
    conn.Close
End Sub

