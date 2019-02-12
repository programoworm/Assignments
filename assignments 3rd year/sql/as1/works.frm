VERSION 5.00
Begin VB.Form works 
   Caption         =   "works"
   ClientHeight    =   6405
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   14790
   LinkTopic       =   "Form1"
   ScaleHeight     =   6405
   ScaleWidth      =   14790
   StartUpPosition =   1  'CenterOwner
   Visible         =   0   'False
   Begin VB.TextBox did 
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
      Left            =   6600
      TabIndex        =   11
      Top             =   2280
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
      Left            =   8760
      TabIndex        =   8
      Top             =   2640
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
      Left            =   8760
      TabIndex        =   7
      Top             =   2640
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
      Left            =   6360
      TabIndex        =   6
      Top             =   3720
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
      Left            =   8760
      TabIndex        =   5
      Top             =   3720
      Width           =   1935
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
      Left            =   4200
      TabIndex        =   4
      Top             =   3720
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
      Left            =   8760
      TabIndex        =   3
      Top             =   1920
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
      Left            =   8760
      TabIndex        =   2
      Top             =   1920
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
      Left            =   8760
      TabIndex        =   1
      Top             =   1200
      Width           =   1575
   End
   Begin VB.TextBox eid 
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
      Left            =   6600
      TabIndex        =   0
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label3 
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
      Left            =   3720
      TabIndex        =   10
      Top             =   2280
      Width           =   2175
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
      Left            =   4200
      TabIndex        =   9
      Top             =   1680
      Width           =   1695
   End
End
Attribute VB_Name = "works"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As ADODB.Connection, rs As ADODB.Recordset, cmd As ADODB.Command, s As String
Private Sub back_Click()
    menu.Show
    Unload Me
End Sub

Private Sub can_Click()
    eid.Text = ""
    did.Text = ""
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
    eid.Text = ""
    did.Text = ""
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
            eid.Text = rs("e_id")
            did.Text = rs("d_id")
            If MsgBox("Do you want to delete?", vbQuestion + vbYesNo, App.ProductName) = vbYes Then
                rs.delete adAffectCurrent
                eid.Text = ""
                did.Text = ""
                MsgBox "data successfully deleted"
            End If
        End If
    End If
End Sub

Private Sub Form_Load()
    Set cn = New ADODB.Connection
    Set rs = New ADODB.Recordset
    cn.Open "Provider=OraOLEDB.Oracle.1;Password=tiger;Persist Security Info=True;User ID=scott"
    rs.Open "select * from works", cn, adOpenDynamic, adLockOptimistic
End Sub

Private Sub insert_Click()
    If eid.Text = "" Or did.Text = "" Then
        MsgBox "ID cannot be left blank"
        eid.SetFocus
    Else
        s = "insert into works values('" + eid.Text + "', '" + did.Text + "')"
        cn.Execute s
        MsgBox "Sucessfully inserted"
    End If
End Sub

Private Sub Modify_Click()
    ib = InputBox("Enter the Employee ID to update")
    If ib = "" Then
        MsgBox "ID cannot be left blank"
        eid.SetFocus
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
            eid.Text = rs("e_id")
            did.Text = rs("d_id")
        End If
    End If
End Sub

Private Sub update_Click()
    If eid = "" Then
        MsgBox "ID cannot be left blank"
        eid.SetFocus
    Else
        rs("e_id") = eid.Text
        rs("d_id") = did.Text
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
    vworks.Show
    Unload Me
End Sub
