
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage


    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Dim searchtext As String
        searchtext = "Select * From final_student where (first_name like '%" + TextBox1.Text.ToString() + "%')"
        SqlDatasource1.selectCommand = searchtext
    End Sub
End Class

