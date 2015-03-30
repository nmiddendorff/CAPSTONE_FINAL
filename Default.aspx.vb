
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn
        If Roles.IsUserInRole(Login1.UserName, "r_middendorff_admin") = True Then
            Response.Redirect("~/admin/homepage.aspx")
        Else : Response.Redirect("~/default.aspx")

        End If




    End Sub
End Class
