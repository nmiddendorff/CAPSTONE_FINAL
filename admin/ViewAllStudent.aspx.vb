
Partial Class AddNew
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDeleted(sender As Object, e As GridViewDeletedEventArgs) Handles GridView1.RowDeleted
        Dim deletedstudent As String = e.Values("first_name").ToString()

        lbl_deletedStudent.Text = deletedstudent & " has been deleted from the Student database."

        Response.AddHeader("REFRESH", "3;URL=./ViewAllStudent.aspx")
    End Sub
End Class
