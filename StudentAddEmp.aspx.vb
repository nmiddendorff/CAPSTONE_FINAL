Imports System.Data
Imports System.Data.SqlClient
Partial Class StudentAddEmp
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Dim connection As SqlConnection = New SqlConnection("Data Source=apollo.biz.uiowa.edu; Initial Catalog=studentrecords; Persist Security Info=True; User ID=studentrecordadmin; Password=IowaHawkeyes1!")
        Dim cmd As New SqlCommand
        Dim returnValue As Object
        cmd.CommandText = "Select (Max(EID)) From final_employee"
        cmd.CommandType = CommandType.Text
        cmd.Connection = connection

        connection.Open()
        returnValue = cmd.ExecuteScalar()
        connection.Close()


        Dim val As String = Request.QueryString("Parameter")
        Dim url As String
        url = "/StudentPage.aspx?Comp=" & returnValue & "&SID=" & val
        Response.Redirect(url)


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim val As String = Request.QueryString("Parameter")
        Dim url As String
        url = "/StudentPage.aspx?SID=" & val
        Response.Redirect(url)
    End Sub
End Class
