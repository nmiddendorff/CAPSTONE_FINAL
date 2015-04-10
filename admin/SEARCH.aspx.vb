
Partial Class admin_SEARCH
    Inherits System.Web.UI.Page

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Dim searchtext As String
        searchtext = "Select * From final_student fs where (fs.first_name like '%" + TextBox1.Text.ToString() + "%') "
        SqlDataSource1.SelectCommand = searchtext
    End Sub


    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged
        Dim searchtext As String
        searchtext = "Select * From final_student fs where (fs.last_name like '%" + TextBox2.Text.ToString() + "%') "
        SqlDataSource2.SelectCommand = searchtext
    End Sub

    Protected Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        Dim searchtext As String
        searchtext = "Select * From final_student fs where (fs.city like '%" + TextBox3.Text.ToString() + "%') "
        SqlDataSource3.SelectCommand = searchtext
    End Sub

    Protected Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles TextBox4.TextChanged
        Dim searchtext As String
        searchtext = "Select * From final_employee fe where (fe.emp_name like '%" + TextBox4.Text.ToString() + "%') "
        SqlDataSource4.SelectCommand = searchtext
    End Sub


End Class
