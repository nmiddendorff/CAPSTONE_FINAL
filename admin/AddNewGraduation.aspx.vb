
Partial Class admin_AddNewGraduation
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormView1.Focus()
    End Sub

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Dim newgraduation As String = e.Values("LONG_DESCR").ToString()

        lbl_newgraduation.Text = newgraduation & " has been added to the Graduation database."

        Response.AddHeader("REFRESH", "3;URL=./ViewAllGraduation.aspx")
    End Sub
End Class
