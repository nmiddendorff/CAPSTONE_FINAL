
Partial Class admin_AddNewGraduation
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub FormView2_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView2.ItemInserted
        Dim newgraduation As String = e.Values("SHORT_DESCR").ToString()

        lbl_newgraduation.Text = newgraduation & " has been added to the Graduation database."

        Response.AddHeader("REFRESH", "1;URL=./AddNewGraduation.aspx")
    End Sub
End Class
