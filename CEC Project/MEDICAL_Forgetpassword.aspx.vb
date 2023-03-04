Imports System.Data.SqlClient
Imports System.Data
Partial Class MEDICAL_Forgetpassword
    Inherits System.Web.UI.Page
    Dim cnn As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cnn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Medical_Store_DB.mdf;Integrated Security=True;User Instance=True")
        cnn.Open()
        Dim str As String
        str = "UPDATE Medical_Store_Staff_Register SET Password='" & txtpass.Text & "',Confirm_Password='" & txtcpass.Text & "' WHERE Username='" & txtuname.Text & "' "
        cmd = New SqlCommand(str, cnn)
        cmd.ExecuteNonQuery()
        MsgBox("Passowrd Updated", MsgBoxStyle.Information, "Updated")
        cnn.Close()
    End Sub
End Class
