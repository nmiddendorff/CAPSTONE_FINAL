Imports System.Net
Imports System.Net.Mail
Imports System.Data
Imports System.Threading.Tasks

Partial Class admin_EmailPage
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        For Each item As GridViewRow In GridView1.Rows
            Dim email As String
            Dim sid As String
            Dim first_name As String
            email = item.Cells(3).Text.Trim
            sid = item.Cells(0).Text.Trim
            first_name = item.Cells(2).Text.Trim

            Dim objOutlook As Object
            Dim objMail As Object
            Dim rngTo As String
            Dim rngSubject As String
            Dim rngBody As String
            Dim rngAttach As String

            objOutlook = CreateObject("Outlook.Application")
            objMail = objOutlook.CreateItem(0)


            rngTo = email
            rngSubject = "Mike Colbert needs your help!"
            rngBody = "Hi " & first_name & ", Please click this link http://localhost:61949/StudentPage.aspx?SID=" & sid
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

        Next


        

    End Sub
End Class
