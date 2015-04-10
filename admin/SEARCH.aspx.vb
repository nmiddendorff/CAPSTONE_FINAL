
Partial Class admin_SEARCH
    Inherits System.Web.UI.Page

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Dim searchtext As String
        searchtext = "Select * From final_student fs, final_employee fe where (fs.first_name like '%" + TextBox1.Text.ToString() + "%') OR (fs.last_name like '%" + TextBox1.Text.ToString() + "%') OR (fe.emp_name like '%" + TextBox1.Text.ToString() + "%') "
        SqlDatasource1.selectCommand = searchtext
    End Sub


End Class
