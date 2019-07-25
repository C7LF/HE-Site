using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; // Provides access to the File class for reading the file
using System.Net.Mail; // Provides access to the various mail related classes

public partial class Controls_Reg_Form : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Password.Attributes["type"] = "password";
        ConfirmPassword.Attributes["type"] = "password";
    }

    protected void submitReview_Click(object sender, EventArgs e)
    {
        if (Page.IsValid) {
            if (Student.SelectedValue == "1")
            {
            try
            {
                var bodyContent = firstName.Text + " Validate your account here: " + "http://localhost:14999/";
                MailMessage message = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();

                MailAddress fromAddress = new MailAddress("CalZ101Z@gmail.com");
                message.To.Add(CollegeEmail.Text);
                message.From = fromAddress;
                message.Subject = "Confirm your address";
                message.IsBodyHtml = true;
                message.Body = bodyContent;
                smtpClient.Host = "smtp.gmail.com";   // We use gmail as our smtp client
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("CalZ101Z@gmail.com", "fz3TuuNQv160");

                smtpClient.Send(message);
                success.Text = "Please Verfiy your account, a message has been sent to your college email address <br /><br />";
                success.Attributes["class"] = "alert alert-success";
                    firstName.Text = "";
                    lastName.Text = "";
                    emailAdd.Text = "";
                    Password.Text = "";
                    ConfirmPassword.Text = "";
                    CollegeEmail.Text = "";
                }
            catch
            {
                success.Text = "Account Creation Failed, please try again later";
                success.Attributes["class"] = "alert alert-warning";
                    
                   
                }
        } else
            {
                try { 
                using (StreamWriter w = File.AppendText(Server.MapPath("~/App_Data/Register.txt")))
                {
                    w.WriteLine(firstName.Text + "\r\n" + lastName.Text + "\r\n" + emailAdd.Text + "\r\n" + Password.Text + "\r\n");
                        success.Text = "Account Created, Please Login <a href='/'>Login Here</a> <br /><br />";
                    success.Attributes["class"] = "alert alert-success";
                        firstName.Text = "";
                        lastName.Text = "";
                        emailAdd.Text = "";
                        Password.Text = "";
                        ConfirmPassword.Text = "";
                    }
                }
                catch
                {
                    success.Text = "Account Creation Failed, please try again later <br /><br />";
                    success.Attributes["class"] = "alert alert-warning";
                    Response.Redirect("/");
                }
            }
    }
    }

    protected void Student_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(this.Student.SelectedValue == "1")
        {
            this.registerextras.Visible = true;
        }
        else
        {
            this.registerextras.Visible = false;
        }
    }

    protected void collegeemailvalidator1(object source, ServerValidateEventArgs args)
    {
        if (Student.SelectedValue == "1")
        {
            if (CollegeEmail.Text.Contains("chesterfield.ac.uk"))
            {
                args.IsValid = true;
            } else
            {
                args.IsValid = false;
            }
        }
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        try
        {
       
        }
        catch
        {
          
        }
    }
}
