<%@ Page Title="" Language="VB" MasterPageFile="~/Login.master" AutoEventWireup="false" CodeFile="MEDICAL_Login.aspx.vb" Inherits="MEDICAL_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link rel="Stylesheet" href="medical_login.css" />
    <center>
    <div class="form"><br/><br/>
    <h2>MEDICAL_LOGIN</h2>
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
    <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#FF3300" 
            Height="30px" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            HeaderText="All Errors:" ShowMessageBox="True" ShowSummary="False" />
    <p class="link">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href ="MEDICAL_CREATE.aspx" style="text-decoration: underline">Creat an account</a> Here</p>
    <a href ="MEDICAL_Forgetpassword.aspx" style="color: #FF6600">Forget Password?</a>
    </center>
    </div>
     <br />
    <table style="width: 100%; border: 1px solid #FFFFFF">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="475px" 
                    ImageUrl="~/Image/Login.jpeg" Width="690px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

