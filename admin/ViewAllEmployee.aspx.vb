Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_ViewAllEmployee
    Inherits System.Web.UI.Page

    Protected Sub GridView_employee_RowDeleted(sender As Object, e As GridViewDeletedEventArgs) Handles GridView_employee.RowDeleted


            Dim deletedEmployee As String = e.Values("emp_name").ToString
            'Dim deletedeid As String = e.Values("eid").ToString

            lbl_deletedEmployee.Text = deletedEmployee & " has been deleted from the Employer Database."



            ''Making sure the students don't get lost if their graduation or employer is accidentally deleted
            'Dim connection As SqlConnection = New SqlConnection("Data Source=apollo.biz.uiowa.edu; Initial Catalog=studentrecords; Persist Security Info=True; User ID=studentrecordadmin; Password=IowaHawkeyes1!")
            'Dim sql As String = "UPDATE final_student SET eid = 26 WHERE eid =" & deletedeid
            'Dim command As SqlCommand = New SqlCommand(sql, connection)
            'command.Connection.Open()
            'command.ExecuteNonQuery()
            'command.Connection.Close()

            Response.AddHeader("REFRESH", "3;URL=./ViewAllEmployee.aspx")
    End Sub

   
    Protected Sub GridView_employee_RowUpdated(sender As Object, e As GridViewUpdatedEventArgs) Handles GridView_employee.RowUpdated
        Response.Redirect("./ViewAllEmployee.aspx")
    End Sub
End Class
