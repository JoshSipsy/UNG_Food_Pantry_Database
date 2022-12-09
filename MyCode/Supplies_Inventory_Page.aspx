<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Supplies_Inventory_Page.aspx.cs" Inherits="Food_Pantry_Project.MyCode.Supplies_Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1465px;
        }
        .auto-style6 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
        }
        .auto-style7 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-style: italic;
        }
        #grad1 {
            height: auto;
            background-image: linear-gradient(to bottom, #1C4E9C 25%, #F9B118 100%);
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style13 {
            width: 731px;
        }
        .auto-style14 {
            width: 732px;
        }
        .auto-style15 {
            width: 731px;
            text-align: right;
            color: #FFFFFF;
        }
        .auto-style16 {
            color: #FFFFFF;
        }
        </style>
</head>
<body>
    <div id="grad1">
    <form id="form1" runat="server">
          <div> 
            <h3 class="auto-style10">
                &nbsp;</h3>
              <h3 class="auto-style10">
                <i>
                <asp:HyperLink ID="HomePageHyperlink" runat="server" NavigateUrl="~/MyCode/Home_Page.aspx" CssClass="auto-style6" ForeColor="White">Home Page</asp:HyperLink>
                </i><span class="auto-style7">&nbsp;&nbsp;&nbsp;
                </span><i>
                <asp:HyperLink ID="FoodInventoryHyperlink" runat="server" NavigateUrl="~/MyCode/Food_Inventory_Page.aspx" CssClass="auto-style6" ForeColor="White">Food Items Inventory</asp:HyperLink>
                </i><span class="auto-style7">&nbsp;&nbsp;&nbsp;
                </span><i>
                <asp:HyperLink ID="AboutUsHyperlink" runat="server" NavigateUrl="~/MyCode/About_Us_Page.aspx" CssClass="auto-style6" ForeColor="White">About Us</asp:HyperLink>
                </i><span class="auto-style7">&nbsp;&nbsp;&nbsp;
                </span><i>
                <asp:HyperLink ID="LogoutHyperlink" runat="server" NavigateUrl="~/MyCode/Login_Page.aspx" CssClass="auto-style6" ForeColor="White">Logout</asp:HyperLink>
                </i>
            </h3>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <h3 class="auto-style16">Supplies ID:</h3>
                </td>
                <td class="auto-style14">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="Supplies_ID_TextBox" runat="server" Width="185px"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="Suplies_Inventory_Update_Button" runat="server" OnClick="Suplies_Inventory_Update_Button_Click" Text="Update" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <h3 class="auto-style16">Supplies Name:</h3>
                </td>
                <td class="auto-style14">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="Supplies_Name_TextBox" runat="server" Width="185px"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="Supplies_Inventory_Insert_Button" runat="server" Text="Insert" OnClick="Supplies_Inventory_Insert_Button_Click" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <h3 class="auto-style16">Supplies Category:</h3>
                </td>
                <td class="auto-style14">
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="Supplies_Category_DropDownList" runat="server" Width="193px">
                        <asp:ListItem>Academic</asp:ListItem>
                        <asp:ListItem>Baby Care</asp:ListItem>
                        <asp:ListItem>Cleaning</asp:ListItem>
                        <asp:ListItem>Dish</asp:ListItem>
                        <asp:ListItem>Feminine Care</asp:ListItem>
                        <asp:ListItem>Hygiene</asp:ListItem>
                        <asp:ListItem>Laundry</asp:ListItem>
                        <asp:ListItem>Paper Goods</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp; <asp:Button ID="Supplies_Inventory_Delete_Button" runat="server" OnClick="Supplies_Inventory_Delete_Button_Click" Text="Delete" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <h3 class="auto-style16">Date Last Received:</h3>
                </td>
                <td class="auto-style14">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="Supplies_Date_Last_Received_TextBox" runat="server" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <h3 class="auto-style16">Quantity On Hand:</h3>
                </td>
                <td class="auto-style14">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="Supplies_Quantity_On_Hand_TextBox" runat="server" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;&nbsp;
                    <asp:TextBox ID="Supplies_Inventory_Search_TextBox" runat="server" ForeColor="#999999" Width="185px">Search by Supply Name</asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="Supplies_Inventory_Search_Button" runat="server" OnClick="Supplies_Inventory_Search_Button_Click" Text="Search" Width="80px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">
                    <asp:Label ID="Supplies_Inventory_Label" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Supplies_Inventory]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" HorizontalAlign="Center" PageSize="15">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Supplies_Name" HeaderText="Supplies_Name" SortExpression="Supplies_Name" />
                    <asp:BoundField DataField="Supplies_Category" HeaderText="Supplies_Category" SortExpression="Supplies_Category" />
                    <asp:BoundField DataField="Date_Last_Received" HeaderText="Date_Last_Received" SortExpression="Date_Last_Received" />
                    <asp:BoundField DataField="Quantity_On_Hand" HeaderText="Quantity_On_Hand" SortExpression="Quantity_On_Hand" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <div class="auto-style10">
                <br />
                <span class="auto-style7">
            <strong>
                <br />
                </strong></span>
                <p class="auto-style16">Copyright: University of North Georgia (2022). All rights reserved.</p>
                <asp:Image ID="Image2" runat="server" Height="75px" ImageAlign="Middle" ImageUrl="~/Images/UNG Food Pantry.jpg" />
            </div>
        </div>
    </form>
        </div>
    </body>
</html>
