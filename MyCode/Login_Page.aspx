<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="Food_Pantry_Project.MyCode.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #grad1 {
            height: auto;
            background-image: linear-gradient(to bottom, #1C4E9C 25%, #F9B118 100%);
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style3 {
            text-align: center;
            font-size: 20px;
            color: #FFFFFF;
        }
        .auto-style4 {
            text-align: center;
            color: #FFFFFF;
            font-weight: normal;
        }
        .auto-style5 {
            font-size: 20px;
        }
        .auto-style6 {
            font-size: 24px;
        }
        .auto-style7 {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div id="grad1">
        <form id="form1" runat="server">
        <div class="auto-style4">
            <h1 class="auto-style1">
                &nbsp;</h1>
            <h1 class="auto-style1">
                &nbsp;</h1>
            <p style="font-size:20px" class="auto-style1">
                <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/Images/UNG Food Pantry.jpg" Height="275px" Width="300px" />
            </p>
            <p style="font-size:20px">&nbsp;</p>
            <p class="auto-style6">Please enter your account information and click the &quot;Login&quot; button below.</p>
            <p style="font-size:20px" class="auto-style2">
                Username:</p>
            <p style="font-size:20px" class="auto-style1">
                <asp:TextBox ID="UsernameTextBox" runat="server" Width="200px" CssClass="auto-style1" BackColor="White"></asp:TextBox>
            </p>
            <p class="auto-style3">&nbsp;Password:</p>
            <p style="font-size:20px" class="auto-style1"> 
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Width="200px" BackColor="White"></asp:TextBox>
            </p>
            <div class="auto-style1">
            <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Login" Width="150px" BackColor="#0066FF" ForeColor="White" Height="30px" />
            <br />
            <br />
            <strong>
            <br />
                </strong>
                <span class="auto-style5"><strong>Warning: This portal is intended for use by UNG Dahlonega Food Pantry staff only<br />
                <br />
                <br />
                <br />
                <br />
                </strong></span>
            <strong>
                <span class="auto-style7">Copyright: University of North Georgia (2022). All rights reserved.</span></strong><br />
            </div>
        </div>
        </form>
        </div>
</body>
</html>
