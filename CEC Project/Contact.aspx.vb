Imports System.Data.SqlClient
Imports System.Data
Partial Class Contact
    Inherits System.Web.UI.Page
    Dim cnn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Contact_Us.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Try
            Dim str As String
            str = "insert into Contact_Table (Firstname,Lastname,E_mail,Subject,Message) values('" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "')"
            Dim cmd As New SqlCommand(str, cnn)
            cnn.Open()
            cmd.ExecuteNonQuery()
            cnn.Close()
            MsgBox("Message Send Successfully", MsgBoxStyle.Information, "Sended")
        Catch ex As Exception
            MsgBox("Failed to send message", MsgBoxStyle.RetryCancel, "Failed")
        End Try
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
    End Sub
End Class
