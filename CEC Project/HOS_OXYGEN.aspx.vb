Imports System.Data.SqlClient
Imports System.Data
Partial Class HOS_OXYGEN
    Inherits System.Web.UI.Page
    Dim cnn As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cnn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Resource_DB.mdf;Integrated Security=True;User Instance=True")
        cnn.Open()
        Dim str As String
        str = "UPDATE Resources SET Total_No='" & txtToxygen.Text & "' ,Available_No='" & txtAoxy.Text & "' WHERE Type='Oxygen' AND Name='" & TextBox1.Text & "'"
        cmd = New SqlCommand(str, cnn)
        cmd.ExecuteNonQuery()
        MsgBox("Data Updated", MsgBoxStyle.Information, "Updated")
    End Sub
End Class
