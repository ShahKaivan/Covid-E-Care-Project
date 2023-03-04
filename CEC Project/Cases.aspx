<%@ Page Title="" Language="VB" MasterPageFile="~/Login2.master" AutoEventWireup="false" CodeFile="Cases.aspx.vb" Inherits="Cases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
            <link href="StyleSheet5.css" rel="stylesheet" type="text/css" />
    </head>
    <br />
    <table style="width: 100%">
        <tr>
            <td style="text-align: center">
                <h1>
                    Total Cases</h1>
            </td>
        </tr>
    </table>
    <table style="width: 100%;margin-top:20px;" class="tb">
        <tr>
            <td style="width: 359px">
    <img class="case-img" src="Image/cases-pic.JPG" /></td>
            <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" BackColor="Black" 
                        ForeColor="White" Height="35px" Width="100px" AppendDataBoundItems="True" 
                        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="State" 
                        DataValueField="State">
                        <asp:ListItem Selected="True" Value="0">Select State</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" 
                        SelectCommand="SELECT DISTINCT [State] FROM [State_Table]">
                    </asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" BackColor="Black" 
                        ForeColor="White" Height="35px" Width="100px" AppendDataBoundItems="True" 
                        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="City" 
                        DataValueField="City">
                        <asp:ListItem Selected="True" Value="0">Select City</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" 
                        SelectCommand="SELECT DISTINCT [City], [State] FROM [City_Table] WHERE ([State] = @State)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="State" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" Text="Search" BackColor="Black" 
                        ForeColor="White" Height="35px" Width="70px" />
                    <br />
                    <br />
                    <div class="cases-box" style="text-align: center">
                        <h3>
                            &nbsp;</h3>
                        <h3 style="text-align: center">
                            Cases Across India
                            <br />
                        </h3>
                        <div style="text-align: center">
                        <br />
                        </div>
                        <div style="text-align: center">
                            <asp:Label ID="Label1" runat="server" BackColor="#FF9966" Font-Bold="True" 
                                Font-Names="Times New Roman" Font-Size="20px" ForeColor="White" Height="50px" 
                                style="text-align: center;" Text="Total Cases" Width="100px"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" BackColor="#00CC99" Font-Bold="True" 
                                Font-Names="Times New Roman" Font-Size="20px" ForeColor="White" Height="50px" 
                                style="text-align: center" Text="Discharged" Width="100px"></asp:Label>
                            &nbsp;
                            <br />
                            <asp:Label ID="Label4" runat="server" BackColor="#FF9966" Font-Bold="True" 
                                Height="50px" Width="100px"></asp:Label>
                            &nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" BackColor="#00CC99" 
                                Font-Bold="True" Height="50px" Width="100px"></asp:Label>
                            &nbsp;<br />
                            <br />
                            <asp:Label ID="Label3" runat="server" BackColor="#ff0000" Font-Bold="True" 
                                Font-Names="Times New Roman" Font-Size="20px" ForeColor="White" Height="50px" 
                                style="text-align: center" Text="Death" Width="100px"></asp:Label>
                            <br />
                            <asp:Label ID="Label6" runat="server" BackColor="Red" Font-Bold="True" 
                                Height="50px" Width="100px"></asp:Label>
                            <br />
                        </div>
                    </div>
            </td>
        </tr>
        </table>
&nbsp;

</asp:Content>
