using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio_Final
{
    public partial class Academics : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {


            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand command = new SqlCommand("INSERT INTO academics_qualification ([degreename],[inst_name],[desciption]) VALUES(@degree,@inst,@desc)", con);
                command.Parameters.AddWithValue("@degree", textbox1.Text.Trim());
                command.Parameters.AddWithValue("@inst", textbox2.Text.Trim());
                command.Parameters.AddWithValue("@desc", textbox3.Text.Trim());
                command.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception)
            {
                Response.Write("An Error Occured");
               
            }
            
        }
    }
}