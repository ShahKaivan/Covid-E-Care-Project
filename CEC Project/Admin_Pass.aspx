﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Login.master" AutoEventWireup="false" CodeFile="Admin_Pass.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="Stylesheet" href="styleSheet2.css" />
 <center>
    <div class="form" >
    <h2>Forget Password</h2>
    <asp:TextBox ID="txtuname" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter Username"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtuname" 
        ErrorMessage="Enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtmail" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter E-mail"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmail" 
        ErrorMessage="Enter E-mail" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtpass" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Password" TextMode="Password"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Password Must Contain 8-10 Characters with alphabets and numbers" 
            ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" 
            ControlToValidate="txtpass">.</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpass" 
        ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:Button ID="Button1" runat="server" Text="Change Password" BackColor="#FF3300" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="All Errors:" ShowMessageBox="True" ShowSummary="False" />
    <p class="link">
    <a href ="Admin_Log.aspx" style="text-decoration: underline">Sign In</a></p>
    </center>
    </div>
     <br />
    <table style="width: 100%; border: 1px solid #FFFFFF">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="475px" 
                    ImageUrl="~/Image/Reset.jpeg" Width="690px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

