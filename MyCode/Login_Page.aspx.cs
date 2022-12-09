using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Pantry_Project.MyCode
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (UsernameTextBox.Text == "UNG_DAH" && PasswordTextBox.Text == "Nighthawk1!")
            {
                Response.Redirect("Home_Page.aspx");
            }
        }
    }
}