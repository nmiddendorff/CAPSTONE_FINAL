Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_Statistics
    Inherits System.Web.UI.Page

    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim count As Integer
        Dim sqlConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("db_studentrecords").ConnectionString)
        Dim sqlCommand As New SqlCommand
        sqlCommand.Connection = sqlConnection
        sqlCommand.CommandText = "SELECT COUNT(SID) FROM [final_student]"

        sqlConnection.Open()
        count = sqlCommand.ExecuteScalar()
        sqlConnection.Close()
        lbl_studentcount.Text = count.ToString

        Dim employercount As Integer
        Dim empsqlConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("db_studentrecords").ConnectionString)
        Dim employersqlCommand As New SqlCommand
        employersqlCommand.Connection = empsqlConnection
        employersqlCommand.CommandText = "SELECT COUNT(emp_name) FROM [final_employee]"

        empsqlConnection.Open()
        employercount = employersqlCommand.ExecuteScalar()
        empsqlConnection.Close()
        lbl_employercount.Text = employercount.ToString

    End Sub
End Class
