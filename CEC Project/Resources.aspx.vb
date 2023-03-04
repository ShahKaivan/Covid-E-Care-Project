Imports System.Data.SqlClient
Imports System.Data
Partial Class Resources
    Inherits System.Web.UI.Page
    Dim cnn As New SqlConnection
    Dim cmd As SqlCommand
    Dim str As String
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click

        cnn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Resource_DB.mdf;Integrated Security=True;User Instance=True"
        cnn.Open()
        str = "Select * from Resources where Type='" & DropDownList4.SelectedValue & "' AND City='" & DropDownList3.SelectedValue & "'"

        Dim cmd As New SqlCommand(str, cnn)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New Data.DataSet
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        If (ds.Tables(0).Rows.Count = 0) Then
            MsgBox("Sorry! No Data Found", MsgBoxStyle.Critical, "Failed")
        End If
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub
End Class
