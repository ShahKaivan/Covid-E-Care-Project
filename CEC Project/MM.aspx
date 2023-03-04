<%@ Page Title="" Language="VB" MasterPageFile="~/Login2.master" AutoEventWireup="false" CodeFile="MM.aspx.vb" Inherits="MM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link rel="Stylesheet" href="styleSheet3.css" />
    <center>
    <div class="form" style="margin-left:100px;margin-top:100px;">
    <h2>UPDATE INJECTION_INFO</h2>
    <asp:TextBox ID="txtMed" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter Medical Name"></asp:TextBox>
    <asp:TextBox ID="txtTin" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Total Injections"></asp:TextBox>
            <asp:TextBox ID="txtAin" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Available Injections"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#FF3300" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="All Errors:" ShowMessageBox="True" ShowSummary="False" />
    <p class="link">
    </center>
    <br />
    <table style="width: 100%; border: 1px solid #FFFFFF;margin-left:50px; margin-top:100px; height: 527px;">
        <tr>
            <td >
        <asp:Image ID="Image1" runat="server" Height="503px" magin-left="60px"
                    ImageUrl="~/Image/Medicine.png" Width="690px" />
                
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

