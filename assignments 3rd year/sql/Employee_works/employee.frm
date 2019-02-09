VERSION 5.00
Begin VB.Form employee 
   Caption         =   "employee"
   ClientHeight    =   7695
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   15015
   LinkTopic       =   "Form1"
   ScaleHeight     =   7695
   ScaleWidth      =   15015
   StartUpPosition =   1  'CenterOwner
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
      Left            =   9240
      TabIndex        =   13
      Top             =   2280
      Visible         =   0   'False
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
      Left            =   10920
      TabIndex        =   12
      Top             =   2280
      Width           =   1575
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
      Left            =   6840
      TabIndex        =   11
      Top             =   3480
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
      Left            =   10560
      TabIndex        =   10
      Top             =   3480
      Width           =   1935
   End
   Begin VB.CommandButton view 
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
      Left            =   4320
      TabIndex        =   9
      Top             =   3480
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
      Left            =   10920
      TabIndex        =   8
      Top             =   1560
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
      Left            =   9240
      TabIndex        =   7
      Top             =   1560
      Visible         =   0   'False
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
      Left            =   10920
      TabIndex        =   6
      Top             =   840
      Width           =   1575
   End
   Begin VB.TextBox salary 
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
      Left            =   4320
      TabIndex        =   5
      Top             =   2400
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
      Left            =   4320
      TabIndex        =   4
      Top             =   1680
      Width           =   4695
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
      Left            =   4320
      TabIndex        =   3
      Top             =   960
      Width           =   1575
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Employee Name"
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
      Left            =   1440
      TabIndex        =   2
      Top             =   1680
      Width           =   2175
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Salary"
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
      Left            =   2160
      TabIndex        =   1
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Employee ID"
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
      Left            =   2160
      TabIndex        =   0
      Top             =   960
      Width           =   1455
   End
End
Attribute VB_Name = "employee"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As ADODB.Connection, rs As ADODB.Recordset, cmd As ADODB.Command, s As String

Private Sub back_Click()
    Unload Me
    menu.Show
End Sub

Private Sub can_Click()
    id.Text = ""
    nm.Text = ""
    salary.Text = ""
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
    salary.Text = ""
End Sub

Private Sub delete_Click()
    ib = InputBox("Enter the ID to delete")
    If ib = "" Then
        MsgBox "ID cannot be blank"
    Else
        rs.Find "e_id like '" & ib & "'"
        If rs.EOF = True Then
            MsgBox "No such record found"
        Else
            id.Text = rs("e_id")
            nm.Text = rs("e_name")
            salary.Text = rs("salary")
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
    rs.Open "select * from employee", cn, adOpenDynamic, adLockOptimistic
End Sub

Private Sub insert_Click()
    's = "insert into employee values('" + id.Text + "', '" + nm.Text + "', '" + salary.Text + "')"
    If id.Text = "" Then
        MsgBox "ID cannot be blank"
        id.SetFocus
    ElseIf salary.Text < 10000 Then
        MsgBox "Salary must be greater than 10K"
        salary.SetFocus
    Else
        cmd.ActiveConnection = cn
        cmd.CommandText = "insert into employee values('" & id.Text & "', '" & nm.Text & "', '" & salary.Text & "')"
        cmd.Execute
    End If
    'rs.AddNew ([e_id,e_name,salary)] = ['" + id.Text + "', '" + nm.Text + "', '" + salary.Text + "'])
    MsgBox "Data sucessfully inserted"
End Sub

Private Sub Modify_Click()
    ib = InputBox("Enter the ID to update")
    If ib = "" Then
        MsgBox "ID cannot be left blank"
        id.SetFocus
    Else
        rs.MoveFirst
        rs.Find "e_id like '" & ib & "'"
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
            id.Text = rs("e_id")
            nm.Text = rs("e_name")
            salary.Text = rs("salary")
        End If
    End If
End Sub

Private Sub update_Click()
    If id = "" Then
        MsgBox "ID cannot be left blank"
        id.SetFocus
    Else
        rs("e_id") = id.Text
        rs("e_name") = nm.Text
        rs("salary") = salary.Text
        rs.update
        MsgBox "Record successfully updated"
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

Private Sub view_Click()
    Unload Me
    vwemp.Show
End Sub
