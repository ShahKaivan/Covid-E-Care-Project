<%@ Page Title="" Language="VB" MasterPageFile="~/Login.master" AutoEventWireup="false" CodeFile="MEDICAL_CREATE.aspx.vb" Inherits="MEDICAL_CREATE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="Stylesheet" href="medical_create.css" />
 <center>
    <div class="form">
    <h2>MEDICAL_Create Account</h2>
    <asp:TextBox ID="txtuname" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter Username"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtuname" 
        ErrorMessage="Enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>
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
     <asp:TextBox ID="txtcpass" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcpass" 
        ErrorMessage="Enter Confirm Password" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Password Does not match" ControlToCompare="txtpass" 
            ControlToValidate="txtcpass">.</asp:CompareValidator>
    <asp:TextBox ID="txtmed" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter Medical Name"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmed" 
        ErrorMessage="Enter Medical Store Name" ForeColor="Red">*</asp:RequiredFieldValidator><br/><br/>
    <asp:TextBox ID="txtadd" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" 
            placeholder="Enter Address" TextMode="MultiLine" 
            style="resize:none" MaxLength="250"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtadd" 
        ErrorMessage="Enter Address" ForeColor="Red">*</asp:RequiredFieldValidator>
     <asp:TextBox ID="txtcity" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter City"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcity" 
        ErrorMessage="Enter City" ForeColor="Red">*</asp:RequiredFieldValidator>
     <asp:TextBox ID="txtstate" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter State"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtstate" 
        ErrorMessage="Enter State" ForeColor="Red">*</asp:RequiredFieldValidator>
     <asp:TextBox ID="txtno" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter Contact No."></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtno" 
        ErrorMessage="Enter Contact No." ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Invalid Contact No." ValidationExpression="^[7-9][0-9]{9}$" 
            ControlToValidate="txtno">.</asp:RegularExpressionValidator>
      <asp:TextBox ID="txtmail" runat="server" BackColor="Black" 
        BorderColor="#FF6600" ForeColor="White" Width="210px" placeholder="Enter E-mail ID"></asp:TextBox>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmail" 
        ErrorMessage="Enter E-mail" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="Invalid E-mail ID" ControlToValidate="txtmail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">.</asp:RegularExpressionValidator>
    <asp:Button ID="Button1" runat="server" Text="Create" BackColor="#FF3300" 
            Height="30px" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="All Errors:" ShowMessageBox="True" ShowSummary="False" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            SelectCommand="SELECT * FROM [Medical_Store_Staff_Register]">
        </asp:SqlDataSource>
    <p class="link">
    &nbsp;&nbsp;&nbsp;
    <a href ="MEDICAL_Login.aspx" style="text-decoration: underline">SignIn</a></p>
    </center>
    </div>
     <br />
    <table style="width: 100%; border: 1px solid #FFFFFF">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="475px" 
                    ImageUrl="~/Image/Create.jpeg" Width="690px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

