Imports System.Data.SqlClient
Imports System.Data
Partial Class Signin
    Inherits System.Web.UI.Page
    Dim cnn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\User_DB.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim str As String
            str = "insert into User_Register(Firstname,Surname,E_mail,Password,Confirm_Password) values('" & txtname.Text & "','" & txtsname.Text & "','" & txtmail.Text & "','" & txtpass.Text & "','" & txtcpass.Text & "')"
            Dim cmd As New SqlCommand(str, cnn)
            cnn.Open()
            cmd.ExecuteNonQuery()
            cnn.Close()
            MsgBox("Account Created Successfully", MsgBoxStyle.Information, "Created")
        Catch ex As Exception
            MsgBox("Account Not Created", MsgBoxStyle.RetryCancel, "Try Another Time")
        End Try
    End Sub
End Class
