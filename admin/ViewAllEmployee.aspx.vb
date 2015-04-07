
Partial Class admin_ViewAllEmployee
    Inherits System.Web.UI.Page

    Protected Sub GridView_employee_RowDeleted(sender As Object, e As GridViewDeletedEventArgs) Handles GridView_employee.RowDeleted
        Dim deletedEmployee As String = e.Values("emp_name").ToString

        lbl_deletedEmployee.Text = deletedEmployee & " has been deleted from the Employer Database."

        Response.AddHeader("REFRESH", "3;URL=./ViewAllEmployee.aspx")
    End Sub

   
    Protected Sub GridView_employee_RowUpdated(sender As Object, e As GridViewUpdatedEventArgs) Handles GridView_employee.RowUpdated
        Response.Redirect("./ViewAllEmployee.aspx")
    End Sub
End Class
