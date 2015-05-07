
Partial Class admin_AddNewEmployee
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Dim newEmployee As String = e.Values("emp_name").ToString()

        lbl_newEmployee.Text = newEmployee & " has been added to the Employer database."
        Response.AddHeader("REFRESH", "1;URL=./AddNewEmployee.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormView1.Focus()
    End Sub
End Class
