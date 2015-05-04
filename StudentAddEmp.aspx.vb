
Partial Class StudentAddEmp
    Inherits System.Web.UI.Page
    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Dim val As String = Request.QueryString("Parameter")
        Dim url As String
        url = "/StudentPage.aspx?SID=" & val
        Response.Redirect(url)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim val As String = Request.QueryString("Parameter")
        Dim url As String
        url = "/StudentPage.aspx?SID=" & val
        Response.Redirect(url)
    End Sub
End Class
