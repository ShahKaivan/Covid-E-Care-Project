<%@ Page Title="" Language="VB" MasterPageFile="~/Login.master" AutoEventWireup="false" CodeFile="Admin_Log.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="Stylesheet" href="styleSheet3.css" />
    <center>
    <div class="form" style="margin-left:100px;margin-top:100px;">
    <h2>ADMIN LOGIN</h2>
    <asp:TextBox ID="txtuname" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter Username"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" 
        ErrorMessage="Enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtpass" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" 
        ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#FF3300" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="All Errors:" ShowMessageBox="True" ShowSummary="False" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
            SelectCommand="SELECT * FROM [Admin_Login]"></asp:SqlDataSource>
    <p class="link">
    &nbsp;
    <a href ="Admin_Pass.aspx" style="color: #FF6600; text-decoration: underline;">Forget Password?</a>
    </center>
    <br />
    <table style="width: 100%; border: 1px solid #FFFFFF;margin-left:50px; margin-top:100px;">
        <tr>
            <td >
                <asp:Image ID="Image1" runat="server" Height="475px" magin-left="60px"
                    ImageUrl="~/Image/Login.jpeg" Width="690px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

