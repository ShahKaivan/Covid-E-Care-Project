<%@ Page Title="" Language="VB" MasterPageFile="~/Login2.master" AutoEventWireup="false" CodeFile="Admin_Profile.aspx.vb" Inherits="Admin_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="Stylesheet" href="styleSheet3.css" />
    <center>
    <div class="form" style="margin-left:100px;margin-top:100px;">
    <h2>UPDATE CASES_INFO</h2>
    <asp:TextBox ID="txtC" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter City Name"></asp:TextBox>
    <asp:TextBox ID="txtcases" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Total Cases"></asp:TextBox>
            <asp:TextBox ID="txtDI" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Discharge"></asp:TextBox>
            <asp:TextBox ID="txtDE" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Death"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#FF3300" />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" 
            SelectCommand="SELECT DISTINCT * FROM [Cases_Table]"></asp:SqlDataSource>
    
    <p class="link">
    </center>
    <br />
    <table style="width: 100%; border: 1px solid #FFFFFF;margin-left:50px; margin-top:100px; height: 527px;">
        <tr>
            <td >
                <asp:Image ID="Image1" runat="server" Height="504px" magin-left="60px"
                    ImageUrl="~/Image/Admin_Profile.png" Width="690px" />
            </td>
        </tr>
    </table>
    <br />

</asp:Content>

