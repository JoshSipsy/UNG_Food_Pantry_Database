<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Food_Inventory_Page.aspx.cs" Inherits="Food_Pantry_Project.MyCode.Food_Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1490px;
        }
        .auto-style11 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-style: italic;
        }
        .auto-style12 {
            margin-left: 0px;
        }
        #grad1 {
            height: auto;
            background-image: linear-gradient(to bottom, #1C4E9C 25%, #F9B118 100%);
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style18 {
            text-align: right;
            height: 30px;
            width: 744px;
            color: #FFFFFF;
        }
        .auto-style19 {
            height: 30px;
            width: 744px;
        }
        .auto-style23 {
            text-align: right;
            width: 744px;
            color: #FFFFFF;
        }
        .auto-style24 {
            width: 744px;
        }
        .auto-style7 {
            font-size: 18px;
            color: #FFFFFF;
        }
        .auto-style25 {
            color: #FFFFFF;
        }
        </style>
</head>
<body>
    <div id="grad1">
    <form id="form1" runat="server">
         <div> 
            <h3 class="auto-style16">
                &nbsp;</h3>
             <h3 class="auto-style16">
                <asp:HyperLink ID="HomePageHyperlink" runat="server" NavigateUrl="~/MyCode/Home_Page.aspx" CssClass="auto-style11" ForeColor="White">Home Page</asp:HyperLink>
                <span class="auto-style11">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:HyperLink ID="SuppliesInventoryHyperlink" runat="server" NavigateUrl="~/MyCode/Supplies_Inventory_Page.aspx" CssClass="auto-style11" ForeColor="White">Supplies Inventory</asp:HyperLink>
                <span class="auto-style11">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:HyperLink ID="AboutUsHyperlink" runat="server" NavigateUrl="~/MyCode/About_Us_Page.aspx" CssClass="auto-style11" ForeColor="White">About Us</asp:HyperLink>
                <span class="auto-style11">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:HyperLink ID="LogoutHyperlink" runat="server" NavigateUrl="~/MyCode/Login_Page.aspx" CssClass="auto-style11" ForeColor="White">Logout</asp:HyperLink>
            </h3>
        </div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <h3 class="auto-style25">Food ID:</h3>
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;
                        <asp:TextBox ID="Food_ID_TextBox" runat="server" Width="185px"></asp:TextBox>
                    &nbsp;&nbsp;
                        <asp:Button ID="Food_Inventory_Update_Button" runat="server" CssClass="auto-style12" Text="Update" OnClick="Food_Inventory_Update_Button_Click" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <h3 class="auto-style25">Food Name:</h3>
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;
                        <asp:TextBox ID="Food_Name_TextBox" runat="server" Width="185px"></asp:TextBox>
                    &nbsp;&nbsp;
                        <asp:Button ID="Food_Inventory_Insert_Button" runat="server" OnClick="Food_Inventory_Insert_Button_Click" Text="Insert" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <h3 class="auto-style25">Food Category:</h3>
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;
                        <asp:DropDownList ID="Food_Category_DropDownList" runat="server" Height="18px" Width="193px">
                            <asp:ListItem>Baking</asp:ListItem>
                            <asp:ListItem>Cereal</asp:ListItem>
                            <asp:ListItem>Cooking</asp:ListItem>
                            <asp:ListItem>Dairy</asp:ListItem>
                            <asp:ListItem>Fruit</asp:ListItem>
                            <asp:ListItem>Grain</asp:ListItem>
                            <asp:ListItem>Meat</asp:ListItem>
                            <asp:ListItem>Nuts</asp:ListItem>
                            <asp:ListItem>Pasta</asp:ListItem>
                            <asp:ListItem>Seasoning</asp:ListItem>
                            <asp:ListItem>Snack</asp:ListItem>
                            <asp:ListItem>Soup</asp:ListItem>
                            <asp:ListItem>Vegetable</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;&nbsp;
                        <asp:Button ID="Food_Inventory_Delete_Button" runat="server" Text="Delete" OnClick="Food_Inventory_Delete_Button_Click" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <h3 class="auto-style25">Date Last Received (MM/DD/YYYY):</h3>
                    </td>
                    <td class="auto-style19">&nbsp;&nbsp;
                        <asp:TextBox ID="Food_Date_Last_Received_TextBox" runat="server" Width="185px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <h3 class="auto-style25">Unopened Shelf Life (Months):</h3>
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;
                        <asp:TextBox ID="Food_Unopened_Shelf_Life_TextBox" runat="server" Width="185px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <h3 class="auto-style25">Quantity On Hand:</h3>
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;
                        <asp:TextBox ID="Food_Quantity_On_Hand_TextBox" runat="server" Width="185px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;&nbsp;
                        <asp:TextBox ID="Food_Inventory_Search_TextBox" runat="server" ForeColor="#999999" Width="185px">Search by Food Name</asp:TextBox>
                    &nbsp;&nbsp;
                        <asp:Button ID="Food_Inventory_Search_Button" runat="server" Text="Search" OnClick="Food_Inventory_Search_Button_Click" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="2">
                        <asp:Label ID="Food_Inventory_Label" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Food_Inventory]"></asp:SqlDataSource>
                    </td>
                </tr>
                </table>
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="909px" AllowSorting="True" AllowPaging="True" HorizontalAlign="Center" PageSize="15">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="Food_Name" HeaderText="Food_Name" SortExpression="Food_Name" />
                                <asp:BoundField DataField="Food_Category" HeaderText="Food_Category" SortExpression="Food_Category" />
                                <asp:BoundField DataField="Date_Last_Received" HeaderText="Date_Last_Received" SortExpression="Date_Last_Received" />
                                <asp:BoundField DataField="Unopened_Shelf_Life" HeaderText="Unopened_Shelf_Life" SortExpression="Unopened_Shelf_Life" />
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
                    <div class="auto-style16">
                        <br />
            <strong>
                <span class="auto-style7">
                        <br />
                        </span></strong>
                <p class="auto-style25">Copyright: University of North Georgia (2022). All rights reserved.</p>
                        <strong>
                        <span class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="75px" ImageAlign="Middle" ImageUrl="~/Images/UNG Food Pantry.jpg" />
                        </span></strong></div>
                    </div>
    </form>
        </div>
    </body>
</html>
