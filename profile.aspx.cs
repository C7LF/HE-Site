using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile : BasePage
{
    protected void Page_Load(object sender, EventArgs e)

    {

        if (!Page.IsPostBack)
        {

            DisplayFirstName.Text = Profile.FirstName;
            DisplayLastName.Text = Profile.LastName;
            DisplayDateOfBirth.Text = Profile.DateOfBirth.ToShortDateString();
            DisplayBio.Text = Profile.Bio;
            DisplayEmailAddress.Text = Profile.EmailAddress;
            DisplayPhoneNumber.Text = Profile.PhoneNumber;
            DisplayCollegeEmail.Text = Profile.CollegeEmail;

            
            FirstName.Text = Profile.FirstName;
            LastName.Text = Profile.LastName;
            DateOfBirth.Text = Profile.DateOfBirth.ToShortDateString();
            Bio.Text = Profile.Bio;
            EmailAddress.Text = Profile.EmailAddress;
            PhoneNumber.Text = Profile.PhoneNumber;
            CollegeEmail.Text = Profile.CollegeEmail;
        }
        Label2.Text = Profile.Favcats;
        Label3.Text = Profile.CurrentCourse;

    }



    protected void UploadBtn_Click(object sender, EventArgs e)
    {

        if (FileUpLoad1.HasFile)
        {
            FileUpLoad1.SaveAs(Server.MapPath("~/App_Data/" + FileUpLoad1.FileName));
            Label1.Text = "<br /> <br /><div class='alert alert-success' role='alert'>Profile Picture Updated!</div>";

            HttpPostedFile file = FileUpLoad1.PostedFile;

            byte[] data = new byte[file.ContentLength];

            file.InputStream.Read(data, 0, file.ContentLength);

            Profile.Picture = data;
            Profile.PictureType = file.ContentType;
        }
        else
        {
            Label1.Text = "<br /> <br /><div class='alert alert-danger' role='alert'>No file to upload!</div>";
        }
    }

    protected void SaveButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Profile.FirstName = FirstName.Text;
            Profile.LastName = LastName.Text;
            Profile.DateOfBirth = DateTime.Parse(DateOfBirth.Text);
            Profile.Bio = Bio.Text;
            Profile.EmailAddress = EmailAddress.Text;
            Profile.PhoneNumber = PhoneNumber.Text;
            Profile.CollegeEmail = CollegeEmail.Text;
            

            DisplayFirstName.Text = Profile.FirstName;
            DisplayLastName.Text = Profile.LastName;
            DisplayDateOfBirth.Text = Profile.DateOfBirth.ToShortDateString();
            DisplayBio.Text = Profile.Bio;
            DisplayEmailAddress.Text = Profile.EmailAddress;
            DisplayPhoneNumber.Text = Profile.PhoneNumber;
            DisplayCollegeEmail.Text = Profile.CollegeEmail;

        }

 

    }

    protected void SaveButtonCats_Click(object sender, EventArgs e)
    {
        if (Checkcats.SelectedValue == "")
        {
            Profile.Favcats = "General";
        } else
        {
            Profile.Favcats = Checkcats.SelectedValue;
        }
        Label2.Text = Profile.Favcats;
    }

    protected void SaveButtoncourse_Click(object sender, EventArgs e)
    {
        if (RadioButtonList2.SelectedValue == "")
        {
            Profile.CurrentCourse = "";
        }
        else
        {
            Profile.CurrentCourse = RadioButtonList2.SelectedValue;
        }
        Label3.Text = Profile.CurrentCourse;
    }
}
