using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace Food_Pantry_Project.MyCode
{
    public partial class Food_Inventory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Food_Inventory_Insert_Button_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Food_Inventory values('" + Food_ID_TextBox.Text + "','" + Food_Name_TextBox.Text + "','" + Food_Category_DropDownList.SelectedValue + "','" + Food_Date_Last_Received_TextBox.Text + "','" + Food_Unopened_Shelf_Life_TextBox.Text + "','" + Food_Quantity_On_Hand_TextBox.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Food_Inventory_Label.Text = "New listing successfully added.";
            GridView1.DataBind();
            Food_ID_TextBox.Text = "";
            Food_Name_TextBox.Text = "";
            Food_Category_DropDownList.SelectedValue = "";
            Food_Date_Last_Received_TextBox.Text = "";
            Food_Unopened_Shelf_Life_TextBox.Text = "";
            Food_Quantity_On_Hand_TextBox.Text = "";
        }

        protected void Food_Inventory_Update_Button_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Food_Inventory set Food_Name ='"+Food_Name_TextBox.Text+"', Food_Category='"+Food_Category_DropDownList.SelectedValue+"', Date_Last_Received='"+Food_Date_Last_Received_TextBox.Text+"', Unopened_Shelf_Life='"+Food_Unopened_Shelf_Life_TextBox.Text+"', Quantity_On_Hand='"+Food_Quantity_On_Hand_TextBox.Text+"' where ID='"+Food_ID_TextBox.Text+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Food_Inventory_Label.Text = "Listing Updated.";
            GridView1.DataBind();
            Food_ID_TextBox.Text = "";
            Food_Name_TextBox.Text = "";
            Food_Category_DropDownList.SelectedValue = "";
            Food_Date_Last_Received_TextBox.Text = "";
            Food_Unopened_Shelf_Life_TextBox.Text = "";
            Food_Quantity_On_Hand_TextBox.Text = "";
        }

        protected void Food_Inventory_Delete_Button_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from Food_Inventory where ID='"+Convert.ToInt32(Food_ID_TextBox.Text).ToString()+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Food_Inventory_Label.Text = "Listing Deleted.";
            GridView1.DataBind();
            Food_ID_TextBox.Text = "";
            Food_Name_TextBox.Text = "";
            Food_Category_DropDownList.SelectedValue = "";
            Food_Date_Last_Received_TextBox.Text = "";
            Food_Unopened_Shelf_Life_TextBox.Text = "";
            Food_Quantity_On_Hand_TextBox.Text = "";
        }

        protected void Food_Inventory_Search_Button_Click(object sender, EventArgs e)
        {
            string find = "select * from Food_Inventory where (Food_Name like '%' +@Food_Name+ '%')";
            SqlCommand cmd = new SqlCommand(find, con);
            cmd.Parameters.Add("@Food_Name", SqlDbType.NVarChar).Value = Food_Inventory_Search_TextBox.Text;
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Food_Name");
            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
            Food_Inventory_Label.Text = "Displaying search results.";
        }
    }
}