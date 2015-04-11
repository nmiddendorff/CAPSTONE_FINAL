
Partial Class admin_ViewAllGraduation
    Inherits System.Web.UI.Page

    Protected Sub GridView_graduation_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView_graduation.RowDeleting
        Dim deletedGraduation As String = e.Values("LONG_DESCR").ToString

        lbl_deletedGraduation.Text = deletedGraduation & " has been deleted from the Employer Database."

        Response.AddHeader("REFRESH", "3;URL=./ViewAllEmployee.aspx")
    End Sub
End Class
