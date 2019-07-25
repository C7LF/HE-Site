using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_posts_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ccheConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        BindBlog();
    }

    void BindBlog()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            

            SqlCommand cmd = new SqlCommand("select * from Courses where Department = 'Construction'", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cmd.Dispose();

        }
        catch (Exception k)
        {
            Response.Write(k.Message);
            //throw;
        }
        finally
        {
            con.Close();
        }

    }
}