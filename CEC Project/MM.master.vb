
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        FormsAuthentication.SignOut()

    End Sub
End Class

