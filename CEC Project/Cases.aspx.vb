Imports System.Data.SqlClient
Imports System.Data
Partial Class Cases
    Inherits System.Web.UI.Page
    Dim cnn As New SqlConnection
    Dim str As String
    Dim dr As SqlDataReader
    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        DropDownList3.Items.Clear()
    End Sub
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        cnn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Cases_DB.mdf;Integrated Security=True;User Instance=True"
        str = "Select * from Cases_Table where City='" & DropDownList3.SelectedValue & "'"
        Dim cmd As New SqlCommand(str, cnn)
        cnn.Open()
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            Label4.Text = dr("Total_Cases")
            Label5.Text = dr("Discharge")
            Label6.Text = dr("Death")
        Else
            MsgBox("Sorry! No Data Found", MsgBoxStyle.Critical, "Failed")
        End If
    End Sub
End Class
