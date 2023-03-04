<%@ Page Title="" Language="VB" MasterPageFile="~/Login2.master" AutoEventWireup="false" CodeFile="Resources.aspx.vb" Inherits="Resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="StyleSheet7.css" rel="stylesheet" type="text/css" />
    <h1 style="text-align: left; margin-left: 800px">Covid Resources</h1>
    <p style="text-align: left; margin-left: 800px">&nbsp;</p>
    <h3 style="text-align: left; margin-left: 640px">24x7 to help you find verified resources related to all COVID needs.</h3>
    <p style="text-align: center">&nbsp;</p>
    <p style="text-align: center">
        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="Black" 
            ForeColor="White" Height="35px" Width="120px" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="State" 
            DataValueField="State">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" 
            SelectCommand="SELECT DISTINCT [State] FROM [State_Table]">
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" BackColor="Black" 
            ForeColor="White" Height="35px" Width="120px" AutoPostBack="True" 
            DataSourceID="SqlDataSource3" DataTextField="City" DataValueField="City">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" 
            SelectCommand="SELECT DISTINCT [City], [State] FROM [City_Table] WHERE ([State] = @State)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="State" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" BackColor="Black" 
            ForeColor="White" Height="35px" Width="130px">
            <asp:ListItem Selected="True">Select Resources</asp:ListItem>
            <asp:ListItem>Oxygen</asp:ListItem>
            <asp:ListItem>Hospital Beds</asp:ListItem>
            <asp:ListItem>Remdesivir Injection</asp:ListItem>
            <asp:ListItem>Testing</asp:ListItem>
        </asp:DropDownList>
&nbsp;<asp:Button ID="Button7" class="Button7" runat="server" BackColor="Black" ForeColor="White" 
            Height="35px" Text="Search" Width="70px" CssClass="Button7" />
    </p>
    <p style="text-align: center">
    <center style="margin-left: 40px">
        <asp:GridView ID="GridView1" class="grd1" runat="server" RowStyle-CssClass="rows"  CssClass="grb1">
        <HeaderStyle BackColor="#ff7200" />
        <RowStyle CssClass="rows"></RowStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" 
            
            SelectCommand="SELECT [Id], [Name], [Contact_No], [Type], [Address], [State] FROM [res] WHERE (([Type] = @Type) AND ([City] = @City))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="Type" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:QueryStringParameter Name="City" 
                    QueryStringField="select * from City_Table" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource></center>
    </p>
    <p style="text-align: center">
        &nbsp;</p>
</asp:Content>

