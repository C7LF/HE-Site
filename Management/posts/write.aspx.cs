using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_posts_write : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ccheConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        txbxAuthor.Text = User.Identity.Name;
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            string fileName = Path.GetFileName(FeaturedImageUpload.PostedFile.FileName);
            FeaturedImageUpload.PostedFile.SaveAs(Server.MapPath("~/Media/") + fileName);

            SqlCommand cmd = new SqlCommand("insert into BlogPost(Title,Content,Author,BlogDate,Category,FeaturedImage) values(@title,@content,@author,@date,@category,@feat)", con);
            cmd.Parameters.AddWithValue("@title", txbxTitle.Text);
            cmd.Parameters.AddWithValue("@content", txbxContent.Text);
            cmd.Parameters.AddWithValue("@author", Profile.UserName);
            cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
            cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@feat", fileName);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Redirect("success.aspx");

        }
        catch (Exception k)
        {
            Response.Write(k.Message);
            //throw;
        }
        finally { con.Close(); }
    }
}