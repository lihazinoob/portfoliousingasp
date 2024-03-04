using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Security.Cryptography;

namespace Portfolio_Final
{
    public partial class AcademicsList : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                
               
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();

                    SqlDataAdapter sda = new SqlDataAdapter("SELECT [degreename],[inst_name],[desciption] FROM academics_qualification", con);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    academicsList.DataSource = dt;
                    academicsList.DataBind();

                    con.Close();
                
            }
        }

        protected void academicsList_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "upd")
            {
                Response.Redirect("~/UpdateAcademics.aspx?degreename="+e.CommandArgument.ToString()+"");
            }
            else if(e.CommandName =="del")
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    string q = "DELETE FROM academics_qualification WHERE[degreename] =@deg";
                     
                    SqlCommand cmd = new SqlCommand(q, con);

                    cmd.Parameters.AddWithValue("@deg",e.CommandArgument);
                    
                    cmd.ExecuteNonQuery();

                    con.Close();
                    Response.Redirect("~/AcademicsList.aspx");

                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void addcoursebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Academics.aspx");
        }
        protected void logout_click(object sender, EventArgs e)
        {
            Response.Redirect("~/MainPage.aspx");
        }


    }
}