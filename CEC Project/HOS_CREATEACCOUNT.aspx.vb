Imports System.Data.SqlClient
Imports System.Data
Partial Class HOS_CREATEACCOUNT
    Inherits System.Web.UI.Page
    Dim cnn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Hospital_Staff_DB.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim str As String
            str = "insert into Hospital_Staff_Register(Username,Password,Confirm_Password,Hospital_Name,Hospital_Address,City,State,Mob_No,E_mail) values('" & txtuname.Text & "','" & txtpass.Text & "','" & txtcpass.Text & "','" & txthos.Text & "','" & txtadd.Text & "','" & txtcity.Text & "','" & txtstate.Text & "','" & txtno.Text & "','" & txtmail.Text & "')"
            Dim cmd As New SqlCommand(str, cnn)
            cnn.Open()
            cmd.ExecuteNonQuery()
            cnn.Close()
            MsgBox("Account Created Successfully.You can login within 30 min", MsgBoxStyle.Information, "Created")
        Catch ex As Exception
            MsgBox("Account Not Created", MsgBoxStyle.RetryCancel, "Try Another Time")
        End Try
    End Sub
End Class
