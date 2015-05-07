
Partial Class AddNew
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormView1.Focus()

    End Sub

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Dim newstudent As String = e.Values("first_name").ToString()

        lbl_newstudent.Text = newstudent & " has been added to the Student database."

        Response.AddHeader("REFRESH", "1;URL=./AddNewStudent.aspx")
    End Sub
End Class
