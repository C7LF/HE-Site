using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_course_write : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ccheConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
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

            SqlCommand cmd = new SqlCommand("insert into Courses(CourseTitle,CoruseContent,CourseRating,CourseAwardingBody,CourseLevel,Attendance,Duration,CoruseFee,CoruseFunding,ApplyLink,Department,FeaturedImage) values(@ctitle,@ccontent,@crating,@caw,@clvl,@catt,@cdur,@cfee,@cfun,@capl,@cdepm,@cfeat)", con);
            cmd.Parameters.AddWithValue("@ctitle", courseTitle.Text);
            cmd.Parameters.AddWithValue("@ccontent", courseContent.Text);
            cmd.Parameters.AddWithValue("@crating", courseRating.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@caw", courseAwardingBody.Text);
            cmd.Parameters.AddWithValue("@clvl", courseLevel.Text);
            cmd.Parameters.AddWithValue("@catt", courseAttendance.Text);
            cmd.Parameters.AddWithValue("@cdur", courseDuration.Text);
            cmd.Parameters.AddWithValue("@cfee", courseFee.Text);
            cmd.Parameters.AddWithValue("@cfun", courseFunding.Text);
            cmd.Parameters.AddWithValue("@capl", courseApplyLink.Text);
            cmd.Parameters.AddWithValue("@cdepm", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@cfeat", fileName);
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