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
    public partial class Supplies_Inventory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Supplies_Inventory_Insert_Button_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Supplies_Inventory values('" + Supplies_ID_TextBox.Text + "','" + Supplies_Name_TextBox.Text + "','" + Supplies_Category_DropDownList.SelectedValue + "','" + Supplies_Date_Last_Received_TextBox.Text + "','" + Supplies_Quantity_On_Hand_TextBox.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Supplies_Inventory_Label.Text = "New listing successfully added.";
            GridView1.DataBind();
            Supplies_ID_TextBox.Text = "";
            Supplies_Name_TextBox.Text = "";
            Supplies_Category_DropDownList.SelectedValue = "";
            Supplies_Date_Last_Received_TextBox.Text = "";
            Supplies_Quantity_On_Hand_TextBox.Text = "";
        }

        protected void Suplies_Inventory_Update_Button_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Supplies_Inventory set Supplies_Name ='" + Supplies_Name_TextBox.Text + "', Supplies_Category='" + Supplies_Category_DropDownList.SelectedValue + "', Date_Last_Received='" + Supplies_Date_Last_Received_TextBox.Text + "', Quantity_On_Hand='" + Supplies_Quantity_On_Hand_TextBox.Text + "' where ID='" + Supplies_ID_TextBox.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Supplies_Inventory_Label.Text = "Listing Updated.";
            GridView1.DataBind();
            Supplies_ID_TextBox.Text = "";
            Supplies_Name_TextBox.Text = "";
            Supplies_Category_DropDownList.SelectedValue = "";
            Supplies_Date_Last_Received_TextBox.Text = "";
            Supplies_Quantity_On_Hand_TextBox.Text = "";
        }

        protected void Supplies_Inventory_Delete_Button_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from Supplies_Inventory where ID='" + Convert.ToInt32(Supplies_ID_TextBox.Text).ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Supplies_Inventory_Label.Text = "Listing Deleted.";
            GridView1.DataBind();
            Supplies_ID_TextBox.Text = "";
            Supplies_Name_TextBox.Text = "";
            Supplies_Category_DropDownList.SelectedValue = "";
            Supplies_Date_Last_Received_TextBox.Text = "";
            Supplies_Quantity_On_Hand_TextBox.Text = "";
        }

        protected void Supplies_Inventory_Search_Button_Click(object sender, EventArgs e)
        {
            string find = "select * from Supplies_Inventory where (Supplies_Name like '%' +@Supplies_Name+ '%')";
            SqlCommand cmd = new SqlCommand(find, con);
            cmd.Parameters.Add("@Supplies_Name", SqlDbType.NVarChar).Value = Supplies_Inventory_Search_TextBox.Text;
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Supplies_Name");
            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
            Supplies_Inventory_Label.Text = "Displaying search results.";
        }
    }
}