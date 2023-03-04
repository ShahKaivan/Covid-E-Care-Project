Imports System.Data.SqlClient
Imports System.Data
Partial Class Login1
    Inherits System.Web.UI.Page
    Dim cnn As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        cnn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\User_DB.mdf;Integrated Security=True;User Instance=True")
        cnn.Open()
        cmd = New SqlCommand("SELECT * FROM User_Register WHERE E_mail='" & txtmail.Text & "' AND Password='" & txtpass.Text & "'", cnn)
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            If (dr(2).ToString = txtmail.Text) Then
                MsgBox("Login Successfully", MsgBoxStyle.Information, "Login")
                Response.Redirect("Home-2.aspx")  
            End If
        Else
            MsgBox("Incorrect Email OR Password", MsgBoxStyle.Critical, "Failed")
            txtmail.Text = ""
            txtpass.Text = ""
        End If
    End Sub
End Class
