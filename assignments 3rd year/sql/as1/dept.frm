VERSION 5.00
Begin VB.Form dept 
   Caption         =   "Department"
   ClientHeight    =   5730
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   14595
   LinkTopic       =   "Form1"
   ScaleHeight     =   5730
   ScaleWidth      =   14595
   StartUpPosition =   1  'CenterOwner
   Begin VB.ComboBox cmb_fid 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   2880
      TabIndex        =   15
      Top             =   2280
      Width           =   1095
   End
   Begin VB.TextBox id 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   10
      Top             =   480
      Width           =   1575
   End
   Begin VB.TextBox nm 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   9
      Top             =   1080
      Width           =   4695
   End
   Begin VB.TextBox mid 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   8
      Top             =   1680
      Width           =   1575
   End
   Begin VB.CommandButton insert 
      Caption         =   "Insert"
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
      Left            =   9480
      TabIndex        =   7
      Top             =   360
      Width           =   1575
   End
   Begin VB.CommandButton update 
      Caption         =   "Update"
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
      Left            =   7800
      TabIndex        =   6
      Top             =   1080
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.CommandButton delete 
      Caption         =   "Delete"
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
      Left            =   9480
      TabIndex        =   5
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton vw 
      Caption         =   "View"
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
      Left            =   2880
      TabIndex        =   4
      Top             =   2880
      Width           =   1575
   End
   Begin VB.CommandButton back 
      Caption         =   "Back to Menu"
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
      Left            =   9120
      TabIndex        =   3
      Top             =   2880
      Width           =   1935
   End
   Begin VB.CommandButton clear 
      Caption         =   "Clear"
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
      Left            =   5400
      TabIndex        =   2
      Top             =   2880
      Width           =   1575
   End
   Begin VB.CommandButton Modify 
      Caption         =   "Modify"
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
      Left            =   9480
      TabIndex        =   1
      Top             =   1800
      Width           =   1575
   End
   Begin VB.CommandButton can 
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
      Height          =   495
      Left            =   7800
      TabIndex        =   0
      Top             =   1800
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Floor ID"
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
      Left            =   720
      TabIndex        =   14
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Department ID"
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
      Left            =   480
      TabIndex        =   13
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Manager ID"
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
      Left            =   720
      TabIndex        =   12
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Department Name"
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
      Left            =   0
      TabIndex        =   11
      Top             =   1080
      Width           =   2175
   End
End
Attribute VB_Name = "dept"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As ADODB.Connection, rs As ADODB.Recordset, cmd As ADODB.Command
Dim s As String

Private Sub back_Click()
    menu.Show
    Unload Me
End Sub

Private Sub can_Click()
    id.Text = ""
    nm.Text = ""
    mid.Text = ""
    cmb_fid.Text = ""
    rs.MoveFirst
    update.Visible = False
    Modify.Visible = True
    insert.Visible = True
    Modify.Visible = True
    delete.Visible = True
    back.Visible = True
    can.Visible = False
End Sub

Private Sub clear_Click()
    id.Text = ""
    nm.Text = ""
    mid.Text = ""
    cmb_fid.Text = ""
End Sub

Private Sub delete_Click()
    ib = InputBox("Enter the ID to delete")
    If ib = "" Then
        MsgBox "ID cannot be blank"
    Else
        rs.Find "d_id like '" & ib & "'"
        If rs.EOF = True Then
            MsgBox "No such record found"
        Else
            id.Text = rs("d_id")
            nm.Text = rs("d_name")
            mid.Text = rs("manager_id")
            cmb_fid.Text = rs("floor_id")
            If MsgBox("Do you want to delete?", vbQuestion + vbYesNo, App.ProductName) = vbYes Then
                rs.delete adAffectCurrent
                MsgBox "data successfully deleted"
            End If
        End If
    End If
End Sub

Private Sub Form_Load()
    Set cn = New ADODB.Connection
    Set cmd = New ADODB.Command
    Set rs = New ADODB.Recordset
    cn.Open "Provider=OraOLEDB.Oracle.1;Password=tiger;Persist Security Info=True;User ID=scott"
    rs.Open "select * from dept", cn, adOpenDynamic, adLockOptimistic
    i = 1
    Do While i <= 20
        cmb_fid.AddItem i
        i = i + 1
    Loop
End Sub

Private Sub Modify_Click()
     ib = InputBox("Enter the ID to update")
    If ib = "" Then
        MsgBox "ID cannot be left blank"
        id.SetFocus
    Else
        rs.MoveFirst
        rs.Find "d_id like '" & ib & "'"
        If rs.EOF = True Then
            MsgBox "No such record found"
        Else
            update.Visible = True
            Modify.Visible = False
            insert.Visible = False
            Modify.Visible = False
            delete.Visible = False
            back.Visible = False
            can.Visible = True
            id.Text = rs("d_id")
            nm.Text = rs("d_name")
            mid.Text = rs("manager_id")
            cmb_fid.Text = rs("floor_id")
        End If
    End If
End Sub

Private Sub update_Click()
    If id = "" Then
        MsgBox "ID cannot be left blank"
        id.SetFocus
    Else
        rs("d_id") = id.Text
        rs("d_name") = nm.Text
        rs("manager_id") = mid.Text
        rs("floor_id") = cmb_fid.Text
        rs.update
        MsgBox "Value successfully updated"
        rs.MoveFirst
        update.Visible = False
        Modify.Visible = True
        insert.Visible = True
        Modify.Visible = True
        delete.Visible = True
        back.Visible = True
        can.Visible = False
    End If
End Sub

Private Sub vw_Click()
    vwdept.Show
    Unload Me
End Sub

Private Sub insert_Click()
    If id.Text = "" Then
        MsgBox "ID cannot be blank"
        id.SetFocus
    Else
        s = "insert into dept values('" & id.Text & "','" & nm.Text & "', '" & mid.Text & "','" & cmb_fid.Text & "')"
        cmd.ActiveConnection = cn
        cmd.CommandText = s
        cmd.Execute
        MsgBox "Record successfully inserted!!"
    End If
End Sub
