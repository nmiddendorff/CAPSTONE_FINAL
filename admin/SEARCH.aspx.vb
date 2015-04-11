
Partial Class admin_SEARCH
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        GridView1.Visible = True


        Dim searchtext As String
        searchtext = "Select * From final_student fs where (fs.first_name like '%" + TextBox1.Text.ToString() + "%') "
        SqlDataSource1.SelectCommand = searchtext
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        GridView2.Visible = True

        Dim searchtext As String
        searchtext = "Select * From final_student fs where (fs.last_name like '%" + TextBox2.Text.ToString() + "%') "
        SqlDataSource2.SelectCommand = searchtext
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        GridView3.Visible = True
        Dim searchtext As String
        searchtext = "Select * From final_student fs where (fs.city like '%" + TextBox3.Text.ToString() + "%') "
        SqlDataSource3.SelectCommand = searchtext
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        GridView4.Visible = True
        Dim searchtext As String
        searchtext = "Select * From final_employee fe where (fe.emp_name like '%" + TextBox4.Text.ToString() + "%') "
        SqlDataSource4.SelectCommand = searchtext
    End Sub
End Class
