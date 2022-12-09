<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_Us_Page.aspx.cs" Inherits="Food_Pantry_Project.MyCode.About_Us_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: "Trebuchet MS";
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style4 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            font-style: italic;
            
        }
        #grad1 {
            height: auto;
            background-image: linear-gradient(to bottom, #1C4E9C 15%, #F9B118 100%);
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            text-align: center;
        }
        .auto-style11 {
            font-family: "Bahnschrift Light";
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style12 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            text-align: center;
            color: #000000;
        }
        .auto-style14 {
            font-family: "Bahnschrift Light";
            color: #FFFFFF;
            font-size: 20px;
        }
        .auto-style16 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style17 {
            font-family: "Bahnschrift Light";
            color: #FFFFFF;
        }
        .auto-style18 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <div id="grad1">
    <form id="form1" runat="server">
        <div> 
            <h3 class="auto-style5">
                &nbsp;</h3>
            <h3 class="auto-style5">
                <asp:HyperLink ID="HomePageHyperlink" runat="server" NavigateUrl="~/MyCode/Home_Page.aspx" CssClass="auto-style4" ForeColor="White">Home Page</asp:HyperLink>
                <span class="auto-style4">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:HyperLink ID="FoodInventoryHyperlink" runat="server" NavigateUrl="~/MyCode/Food_Inventory_Page.aspx" CssClass="auto-style4" ForeColor="White">Food Items Inventory</asp:HyperLink>
                <span class="auto-style4">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:HyperLink ID="SuppliesInventoryHyperlink" runat="server" NavigateUrl="~/MyCode/Supplies_Inventory_Page.aspx" CssClass="auto-style4" ForeColor="White">Supplies Inventory</asp:HyperLink>
                <span class="auto-style4">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:HyperLink ID="LogoutHyperlink" runat="server" NavigateUrl="~/MyCode/Login_Page.aspx" CssClass="auto-style4" ForeColor="White">Logout</asp:HyperLink>
            </h3>
        </div>
            <div class="auto-style5">
            <h1 class="auto-style1">
                Our History</h1>
                <p style="font-size:20px" class="auto-style11">In 2016, the Appalachian Studies Center and a committee of UNG volunteers opened a food and supply pantry at the historic Vickery House for UNG Dahlonega students. Since then, the UNG Dahlonega Food Pantry has helped provide much needed resources to thousands of students. The Food Pantry is not a university-funded service. Rather, our operations are financed through financial and food donations as well as funraising events.</p>
            <h1 class="auto-style6">
                <asp:Image ID="Image4" runat="server" Height="600px" ImageAlign="Middle" ImageUrl="~/Images/Vickery House.jpg" />
                </h1>
                <h1 class="auto-style12">&nbsp;</h1>
                <h1 class="auto-style16">Our Mission</h1>
                <p class="auto-style14">Our mission is to ensure that no student of UNG Dahlonega goes without basic food and household necessities. This is no easy feat. That is why the Food Pantry relies heavily on campus and community volunteerism. We promote altruism through community outreach, involvement, and generosity among those we serve.</p>
            <p>
                <asp:Image ID="Image1" runat="server" Height="600px" ImageUrl="~/Images/Volunteers_pic.jpg" />
            </p>
            <h1 class="auto-style6">&nbsp;</h1>
                <h1 class="auto-style16">Our Services</h1>
                <p style="font-size:20px" class="auto-style17">The UNG Dahlonega Food Pantry provides UNG students with access to a wide range of non-perishable food items as well as household essentials and basic academic materials. The pantry uses a supermarket model, wherein members present their Nighthawks ID card, &quot;shop&quot; for what they need for the week, and leave. To ensure continued product availability, limitations are placed on quantities per visitor.</p>
            <p>
                <asp:Image ID="Image2" runat="server" Height="600px" ImageUrl="~/Images/Food_Pic_2.jpg" />
            </p>
            <h1 class="auto-style6">&nbsp;</h1>
                <h1 class="auto-style16">Our Future</h1>
                <p style="font-size:20px" class="auto-style17">With the implementation of our new inventory management database system, we will see a reduction in waste and a boost in employee productivity. We hope to leverage these benefits to reinvest efforts back into expansion of operations. Specifically, we hope to expand the UNG Dahlonega Food Pantry to become an intercampus resource. We hope to establish pantries in UNG&#39;s Blue Ridge, Cumming, and Gainesville campuses.</p>
            <p>
                <asp:Image ID="Image3" runat="server" Height="600px" ImageUrl="~/Images/Nigel Pic.jpg" />
            </p>
                <p>
                    &nbsp;</p><span class="auto-style18">Copyright: University of North Georgia (2022). All rights reserved.</span><p>
                    <asp:Image ID="Image5" runat="server" Height="75px" ImageAlign="Middle" ImageUrl="~/Images/UNG Food Pantry.jpg" />
            </p>
        </div>
    </form>
        </div>
</body>
</html>
