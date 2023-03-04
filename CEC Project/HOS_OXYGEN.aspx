<%@ Page Title="" Language="VB" MasterPageFile="~/Hospital.master" AutoEventWireup="false" CodeFile="HOS_OXYGEN.aspx.vb" Inherits="HOS_OXYGEN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link rel="Stylesheet" href="styleSheet3.css" />
    <center>
    <div class="form" style="margin-left:100px;margin-top:100px;">
    <h2>UPDATE OXYGEN_INFO</h2>
    <asp:TextBox ID="TextBox1" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Hospital Name"></asp:TextBox>
    <asp:TextBox ID="txtToxygen" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter Total Oxygen"></asp:TextBox>
    <asp:TextBox ID="txtAoxy" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Available Oxygen"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#FF3300" />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" 
            SelectCommand="SELECT DISTINCT * FROM [Resources]"></asp:SqlDataSource>
    
    <p class="link">
    </center>
    <br />
    <table style="width: 100%; border: 1px solid #FFFFFF;margin-left:50px; margin-top:100px; height: 527px;">
        <tr>
            <td >
                <asp:Image ID="Image1" runat="server" Height="504px" magin-left="60px"
                    ImageUrl="~/Image/Oxygen.png" Width="690px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

