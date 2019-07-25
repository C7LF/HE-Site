using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : BasePage
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ccheConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        BindBlog();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        var searchText = tags.Text;
        switch (searchText)
        {
            case "BSc in Computing Software Development (top up)":
                Response.Redirect("courses/cc?Id=5");
                break;
            case "BSc in Computing Networks (top up)":
                Response.Redirect("courses/cc?Id=6");
                break;
            case "FdSc in Computing Software Development":
                Response.Redirect("courses/cc?Id=7");
                break;
            case "FdSc in Computing Networks":
                Response.Redirect("courses/cc?Id=8");
                break;
            case "HND Creative Media Production":
                Response.Redirect("courses/cc?Id=9");
                break;
            case "Other":
                Response.Redirect("contact.aspx");
                break;
        }
    }
    void BindBlog()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            var cat = Profile.Favcats;

            if (cat == "Business")
            {
                SqlCommand cmd = new SqlCommand("select TOP 4 * from BlogPost WHERE Category='Business' ORDER BY BlogDate", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                cmd.Dispose();
            }
            else if(cat == "Computing")
            {
                SqlCommand cmd = new SqlCommand("select TOP 4 * from BlogPost WHERE Category='Computing' ORDER BY BlogDate", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                cmd.Dispose();
            }
            else if(cat == "Computing")
            {
                SqlCommand cmd = new SqlCommand("select TOP 4 * from BlogPost WHERE Category='Computing' ORDER BY BlogDate", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                cmd.Dispose();
            }
            else if (cat == "Healthcare")
            {
                SqlCommand cmd = new SqlCommand("select TOP 4 * from BlogPost WHERE Category='Healthcare' ORDER BY BlogDate", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                cmd.Dispose();
            }
            else if (cat == "Sports")
            {
                SqlCommand cmd = new SqlCommand("select TOP 4 * from BlogPost WHERE Category='Sports' ORDER BY BlogDate", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                cmd.Dispose();
            }
            else if (cat == "Crime")
            {
                SqlCommand cmd = new SqlCommand("select TOP 4 * from BlogPost WHERE Category='Crime' ORDER BY BlogDate", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                cmd.Dispose();
            }
            else if (cat == "General")
            {
                SqlCommand cmd = new SqlCommand("select TOP 4 * from BlogPost WHERE Category='General' ORDER BY BlogDate", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                cmd.Dispose();
            }
            else if (cat == "")
            {
                SqlCommand cmd = new SqlCommand("select TOP 4 * from BlogPost ORDER BY BlogDate Desc", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                cmd.Dispose();
            }


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