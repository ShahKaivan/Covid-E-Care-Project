
Partial Class Precaution
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        MsgBox("Wash your hands with soap and Hand-wash regularly", MsgBoxStyle.Information, "Hand-Wash")
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        MsgBox("Before going to outside wear mask for your safety", MsgBoxStyle.Information, "Wear Mask")
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        MsgBox("Maintain at least 1 or 2 metre distance in Market places, Medical Store, Hospitals etc.", MsgBoxStyle.Information, "Maintain Social Distance")
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        MsgBox("Cover your nose and mouth with handkerchief/tissue while sneezing and coughing", MsgBoxStyle.Information, "Use Tissue When Sneeze")
    End Sub

    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton5.Click
        MsgBox("After come back from the outside use hand-sanitiser for clean your hands", MsgBoxStyle.Information, "Use Hand-Sanitiser")
    End Sub

    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton6.Click
        MsgBox("If you have any symptoms of covid take consultation of near by doctor", MsgBoxStyle.Information, " Take Doctor Consultation")
    End Sub

    Protected Sub LinkButton7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton7.Click
        MsgBox("Avoid to Hand-Shake or Hugging as a matter of greeting", MsgBoxStyle.Information, "Avoid Handshake")
    End Sub

    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click
        MsgBox("Stay Home or take rest if you have any covid symptoms", MsgBoxStyle.Information, " Stay Home")
    End Sub

    Protected Sub LinkButton9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton9.Click
        MsgBox("Take Vaccination from your near by Vaccination center", MsgBoxStyle.Information, "Take Vaccine")
    End Sub

    Protected Sub LinkButton10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton10.Click
        MsgBox("Take Healthy food and rest", MsgBoxStyle.Information, "Eat Healthy Food")
    End Sub
End Class
