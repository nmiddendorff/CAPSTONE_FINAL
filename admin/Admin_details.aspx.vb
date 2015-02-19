
Partial Class details
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Response.AddHeader("REFRESH", ".5;URL=./Default.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub
End Class
