
Partial Class Hospital
    Inherits System.Web.UI.MasterPage

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        If (DropDownList1.SelectedItem.Value = "BED") Then
            Response.Redirect("HOS_BED.aspx")

        ElseIf (DropDownList1.SelectedItem.Value = "OXYGEN") Then
            Response.Redirect("HOS_OXYGEN.aspx")

        End If
    End Sub
End Class

