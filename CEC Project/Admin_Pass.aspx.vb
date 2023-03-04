Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cnn As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cnn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Admin_DB.mdf;Integrated Security=True;User Instance=True")
        cnn.Open()
        Dim str As String
        str = "UPDATE Admin_Login SET Password='" & txtpass.Text & "' WHERE Username='" & txtuname.Text & "' "
            cmd = New SqlCommand(str, cnn)
            cmd.ExecuteNonQuery()
            MsgBox("Passowrd Updated", MsgBoxStyle.Information, "Updated")
        cnn.Close()
    End Sub
End Class
