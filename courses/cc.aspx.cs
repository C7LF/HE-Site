using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_posts_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ccheConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString.Get("Id") != null)
        {
            DetailsView1.DefaultMode = DetailsViewMode.ReadOnly;
            detail();
            bindReview();

        }

    }


    void detail()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from Courses where Id=@id", con);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["Id"]);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
            cmd.Dispose();

            string postTitled = (string)ds.Tables[0].Rows[0]["CourseTitle"];
            Page.Title = postTitled;
            if (Profile.CurrentCourse == postTitled)
            {
                Label4.Text = "true";
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

    void bindReview()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from Reviews where CourseId=@id", con);
           cmd.Parameters.AddWithValue("@id", Request.QueryString["Id"]);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                GridViewcomment.Visible = false;
               LabelNoComment.Visible = true;
            }
            else
            {
                GridViewcomment.Visible = true;
                LabelNoComment.Visible = false;
               GridViewcomment.DataSource = ds;
                GridViewcomment.DataBind();
            }

        }
        catch (Exception)
        {

            throw;
        }
        finally { con.Close(); }
    }

   protected void Button1_Click(object sender, EventArgs e)
    {
        //TextBox comments = LoginView4.FindControl("txbxcomment") as TextBox;
        try
        {
            if (reviewText.Text != reviewText.ToolTip.ToString())
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Reviews(CourseId, Rating, Review, Name, Date) values(@rid,@crat,@revt,@name,@date)", con);
                cmd.Parameters.AddWithValue("@rid", Request.QueryString["Id"]);
                cmd.Parameters.AddWithValue("@crat", courseRatingR.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@revt", reviewText.Text);
                cmd.Parameters.AddWithValue("@name", Profile.UserName);
                cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                reviewText.Text = String.Empty;
                bindReview();
                Response.Redirect(Request.RawUrl);
            }
            else
            {

            }

        }
        catch (Exception)
        {

            throw;
        }
       finally { con.Close(); }
    }
}