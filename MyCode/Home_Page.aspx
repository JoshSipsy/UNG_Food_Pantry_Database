<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="Food_Pantry_Project.MyCode.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #grad1 {
            height: auto;
            background-image: linear-gradient(to bottom, #1C4E9C 25%, #F9B118 100%);
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style12 {
            text-align: center;
            font-size: 20px;
            color: #FFFFFF;
        }
        .auto-style13 {
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style4 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-style: italic;
            
        }
        </style>
</head>
<body>
    <div id="grad1">
    <form id="form1" runat="server">
        <div>
            <h3 class="auto-style5">&nbsp;</h3>
            <h3 class="auto-style5">
                <asp:HyperLink ID="FoodInventoryHyperlink" runat="server" NavigateUrl="~/MyCode/Food_Inventory_Page.aspx" CssClass="auto-style4" ForeColor="White">Food Items Inventory</asp:HyperLink>
                <span class="auto-style4">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:HyperLink ID="SuppliesInventoryHyperlink" runat="server" NavigateUrl="~/MyCode/Supplies_Inventory_Page.aspx" CssClass="auto-style4" ForeColor="White">Supplies Inventory</asp:HyperLink>
                <span class="auto-style4">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:HyperLink ID="AboutUsHyperlink" runat="server" NavigateUrl="~/MyCode/About_Us_Page.aspx" CssClass="auto-style4" ForeColor="White">About Us</asp:HyperLink>
                <span class="auto-style4">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:HyperLink ID="LogoutHyperlink" runat="server" NavigateUrl="~/MyCode/Login_Page.aspx" CssClass="auto-style4" ForeColor="White">Logout</asp:HyperLink>
                </h3>
            <h1 class="auto-style13">Welcome to the UNG Dahlonega Food Pantry database!</h1>
            <p class="auto-style12">
                Here you will find a consolidated system for viewing, editing, and sorting inventory listings.
            </p>
            <p class="auto-style12">
                Food Pantry inventory is divided into two data tables: Food Inventory and Supplies Inventory.</p>
            <p class="auto-style12">
                To get started, click one of the links at the top of the page.
            </p>
        </div>      
        <div> 
            <p class="auto-style5">
                <asp:Image ID="Image1" runat="server" Height="550px" ImageUrl="~/Images/Vickery House 2.jpg" />
            </p>
            <p class="auto-style5">
                &nbsp;</p>
            <p class="auto-style13">Copyright: University of North Georgia (2022). All rights reserved.</p>
            <p class="auto-style5">
                <asp:Image ID="Image2" runat="server" Height="75px" ImageAlign="Middle" ImageUrl="~/Images/UNG Food Pantry.jpg" />
            </p>
        </div>
    </form>
    </div>
</body>
</html>
