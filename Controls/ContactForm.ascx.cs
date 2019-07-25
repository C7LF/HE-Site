using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; // Provides access to the File class for reading the file
using System.Net.Mail; // Provides access to the various mail related classes

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }

  protected void sendmessage_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();
            var naas = FullName.Text + "<br>" + EAddress.Text + "<br>" + pnumber.Text + "<br>" + message1.Text;
            try
            {
                MailAddress fromAddress = new MailAddress("CalZ101Z@gmail.com");
                message.To.Add("callummailbox@gmail.com");
                message.From = fromAddress;
                message.Subject = "Support Enquiry";
                message.IsBodyHtml = true;
                message.Body = naas;
                smtpClient.Host = "smtp.gmail.com";   // We use gmail as our smtp client
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("CalZ101Z@gmail.com", "fz3TuuNQv160");

                smtpClient.Send(message);
                success.Text = "Your Message has been sent!";
                success.Attributes["class"] = "alert alert-success";
                FullName.Text = "";
                EAddress.Text = "";
                pnumber.Text = "";
                message1.Text = "";
            }
            catch (Exception ex)
            {
                success.Text = "Message failed to send, please try again later.";
                success.Attributes["class"] = "alert alert-warning";
            }

        }
    }
}