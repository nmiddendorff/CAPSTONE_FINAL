Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_StudentDetails
    Inherits System.Web.UI.Page

    Protected Sub btnEmail_Click(sender As Object, e As EventArgs) Handles btnEmail.Click
        Dim objOutlook As Object
        Dim objMail As Object
        Dim rngTo As String
        Dim rngSubject As String
        Dim rngBody As String
        Dim rngAttach As String
        Dim email As Label = FormView1.FindControl("emailLabel")
        Dim sid As Label = FormView1.FindControl("SIDLabel")
        Dim name As Label = FormView1.FindControl("first_nameLabel")
        Dim txtname As String
        Dim txtsid As String

        txtname = name.Text
        txtsid = sid.Text

        objOutlook = CreateObject("Outlook.Application")
        objMail = objOutlook.CreateItem(0)


        rngTo = email.Text
        rngSubject = "Mike Colbert needs your help!"
        rngBody = "Hi " & txtname & ", Please click this link http://localhost:61949/StudentPage.aspx?Comp=NULL&SID=" & txtsid
        'rngAttach = .Range("B4")


        With objMail
            .To = rngTo
            .Subject = rngSubject
            .Body = rngBody
            '.Attachments.Add rngAttach.Value
            .Display() 'Instead of .Display, you can use .Send to send the email _

        End With

        objOutlook = Nothing
        objMail = Nothing
        rngTo = Nothing
        rngSubject = Nothing
        rngBody = Nothing
        rngAttach = Nothing
    End Sub


    'Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    '    'Dim cal As Object = Me.FormView1.FindControl("Calendar1")

    '    If IsPostBack Then
    '        'FormView1.Visible = False
    '        Me.FormView1.FindControl("Calendar1").Visible = False
    '    End If
    'End Sub

    Protected Sub Calendar1_DataBinding(sender As Object, e As EventArgs)
        Dim cal As Calendar = FormView1.FindControl("Calendar1")
        Dim con As TextBox = FormView1.FindControl("last_contactTB")

        con.Text = cal.SelectedDate
    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs)
        Dim cal As Calendar = FormView1.FindControl("Calendar1")
        Dim con As TextBox = FormView1.FindControl("last_contactTB")

        con.Text = cal.SelectedDate
        cal.Visible = False
    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs)
        Dim cal As Calendar = FormView1.FindControl("Calendar1")
        cal.Visible = True
    End Sub

    Protected Sub Page_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad
        'Making sure the students don't get lost if their graduation or employer is accidentally deleted
        Dim connection As SqlConnection = New SqlConnection("Data Source=apollo.biz.uiowa.edu; Initial Catalog=studentrecords; Persist Security Info=True; User ID=studentrecordadmin; Password=IowaHawkeyes1!")
        Dim sql As String = "UPDATE final_student SET last_contact = GETDATE() WHERE last_contact is NULL"
        Dim command As SqlCommand = New SqlCommand(sql, connection)
        command.Connection.Open()
        command.ExecuteNonQuery()
        command.Connection.Close()
    End Sub


End Class
