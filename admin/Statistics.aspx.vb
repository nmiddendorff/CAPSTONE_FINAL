Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_Statistics
    Inherits System.Web.UI.Page

    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim count As Integer
        Dim sqlConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("db_studentrecords").ConnectionString)
        Dim sqlCommand As New SqlCommand
        sqlCommand.Connection = sqlConnection
        sqlCommand.CommandText = "SELECT COUNT(last_name) FROM [final_student]"

        sqlConnection.Open()
        count = sqlCommand.ExecuteScalar()
        sqlConnection.Close()
        lbl_studentcount.Text = count.ToString
    End Sub
End Class
