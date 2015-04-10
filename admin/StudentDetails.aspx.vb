
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


        objOutlook = CreateObject("Outlook.Application")
        objMail = objOutlook.CreateItem(0)


        rngTo = email.Text
        rngSubject = "Test"
        rngBody = "This is a test"
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

    
End Class
