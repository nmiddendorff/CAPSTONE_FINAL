Imports System.Data
Imports System.Data.SqlClient
Partial Class AddNew
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDeleted(sender As Object, e As GridViewDeletedEventArgs) Handles GridView1.RowDeleted
        Dim deletedstudent As String = e.Values("first_name").ToString()

        lbl_deletedStudent.Text = deletedstudent & " has been deleted from the Student database."

        Response.AddHeader("REFRESH", "3;URL=./ViewAllStudent.aspx")
    End Sub

    Protected Sub Page_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad
        'Making sure the students don't get lost if their graduation or employer is accidentally deleted
        Dim connection As SqlConnection = New SqlConnection("Data Source=apollo.biz.uiowa.edu; Initial Catalog=studentrecords; Persist Security Info=True; User ID=studentrecordadmin; Password=IowaHawkeyes1!")
        Dim sql As String = "UPDATE final_student SET eid = 26 WHERE eid is NULL"
        Dim sql2 As String = "UPDATE final_student SET gid = 99999 WHERE gid is NULL"
        Dim command As SqlCommand = New SqlCommand(sql, connection)
        Dim command2 As SqlCommand = New SqlCommand(sql2, connection)
        command.Connection.Open()
        command.ExecuteNonQuery()
        command.Connection.Close()
        command2.Connection.Open()
        command2.ExecuteNonQuery()
        command2.Connection.Close()
    End Sub
End Class
