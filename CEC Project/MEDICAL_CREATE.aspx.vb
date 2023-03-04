Imports System.Data.SqlClient
Imports System.Data
Partial Class MEDICAL_CREATE
    Inherits System.Web.UI.Page
    Dim cnn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Medical_Store_DB.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim str As String
            str = "insert into Medical_Store_Staff_Register(Username,Password,Confirm_Password,Medical_Name,Medical_Address,City,State,Mob_No,E_mail) values('" & txtuname.Text & "','" & txtpass.Text & "','" & txtcpass.Text & "','" & txtmed.Text & "','" & txtadd.Text & "','" & txtcity.Text & "','" & txtstate.Text & "','" & txtno.Text & "','" & txtmail.Text & "')"
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
