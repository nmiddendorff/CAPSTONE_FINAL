Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_StudentDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim comp As String = Request.QueryString("Comp")
        Dim val As String = Request.QueryString("SID")

        If comp <> "NULL" Then
            Dim connection As SqlConnection = New SqlConnection("Data Source=apollo.biz.uiowa.edu; Initial Catalog=studentrecords; Persist Security Info=True; User ID=studentrecordadmin; Password=IowaHawkeyes1!")
            Dim sql As String = "UPDATE final_student SET eid =" & comp & " WHERE SID =" & val
            Dim command As SqlCommand = New SqlCommand(sql, connection)
            command.Connection.Open()
            command.ExecuteNonQuery()
            command.Connection.Close()
        End If


    End Sub
End Class
