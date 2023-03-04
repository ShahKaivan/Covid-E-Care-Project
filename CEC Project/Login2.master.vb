
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        If (DropDownList1.SelectedItem.Value = "HOME-ISOLATION") Then
            Response.Redirect("Home-Isot.aspx")

        ElseIf (DropDownList1.SelectedItem.Value = "PRECUATION") Then
            Response.Redirect("Precaution.aspx")

        ElseIf (DropDownList1.SelectedItem.Value = "COVID CASES") Then
            Response.Redirect("Cases.aspx")

        ElseIf (DropDownList1.SelectedItem.Value = "COVID-RESOURCES") Then
            Response.Redirect("Resources.aspx")

        ElseIf (DropDownList1.SelectedItem.Value = "Vaccination") Then
            Response.Redirect("https://www.cowin.gov.in")
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        FormsAuthentication.SignOut()
        Response.Redirect("~/home.aspx")
    End Sub
End Class

