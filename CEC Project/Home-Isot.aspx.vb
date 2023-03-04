
Partial Class Home_Isot
    Inherits System.Web.UI.Page

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        MsgBox("Self-monitor health with daily temprature monitoring", MsgBoxStyle.Information, "temperature")
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        MsgBox("Must wash hands regularly, with soap & water for at least 40 seconds; or clean with alcohol based sanitizer", MsgBoxStyle.Information, "Hand-Wash")
    End Sub

    Protected Sub LinkButton7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton7.Click
        MsgBox("Clean surfaces in the room that are touched often(tablets,door knobs,handles,etc) with 1% sodiumm-Hypochlorite solution", MsgBoxStyle.Information, "Clean Surface")
    End Sub

    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click
        MsgBox("Strictly follow the physician's instruction and medication advice", MsgBoxStyle.Information, "Physician Instruction")
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        MsgBox("The infected persion must regularly monitor Oxygen level", MsgBoxStyle.Information, "Oxygen-Check")
    End Sub

    Protected Sub LinkButton9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton9.Click
        MsgBox("Do not share personal items with other family member or people", MsgBoxStyle.Information, "Don't share")
    End Sub
End Class
