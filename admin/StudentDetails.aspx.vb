
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
        rngBody = "Hi " & txtname & ", Please click this link http://localhost:61949/StudentPage.aspx?SID=" & txtsid
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
    'Dim sid As Label = FormView1.FindControl("SIDLabel")
    'Label1.Text = sid.Text
    'End Sub
End Class
