<%@ Page Title="" Language="VB" MasterPageFile="~/Login2.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link rel="Stylesheet" href="contact.css" />
<div class="container">

   
        <label for="fname">First Name</label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<label for="lname">Last Name</label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<label for="email">Email</label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;<label for="subject">Subject</label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;<label for="message">Message</label>
        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
&nbsp;<asp:Button ID="Button7" class="submit" runat="server" Height="35px" 
            Text="Submit" Width="70px" CssClass="submit" />
&nbsp;</div>
</asp:Content>

