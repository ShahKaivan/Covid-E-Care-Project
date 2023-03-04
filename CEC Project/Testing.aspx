<%@ Page Title="" Language="VB" MasterPageFile="~/Hospital.master" AutoEventWireup="false" CodeFile="Testing.aspx.vb" Inherits="HOS_BED" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="Stylesheet" href="styleSheet3.css" />
    <center>
    <div class="form" style="margin-left:100px;margin-top:100px;">
    <h2>UPDATE COVID TEST</h2>
    <asp:TextBox ID="TextBox1" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter Hospital Name"></asp:TextBox>
    <asp:TextBox ID="txtTest" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Total Rapid Kit"></asp:TextBox>
    <asp:TextBox ID="txtAtest" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Available Rapid Kit"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#FF3300" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" 
            SelectCommand="SELECT DISTINCT * FROM [Resources]"></asp:SqlDataSource>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="All Errors:" ShowMessageBox="True" ShowSummary="False" />
    <p class="link">
    </center>
    <br />
    <table style="width: 100%; border: 1px solid #FFFFFF;margin-left:50px; margin-top:100px; height: 527px;">
        <tr>
            <td >
        <asp:Image ID="Image1" runat="server" Height="503px" magin-left="60px"
                    ImageUrl="~/Image/Testing.JPG" Width="690px" />
                
            </td>
        </tr>
    </table>
    <br />

</asp:Content>

