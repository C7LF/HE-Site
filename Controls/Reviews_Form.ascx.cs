using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; // Provides access to the File class for reading the file
using System.Net.Mail; // Provides access to the various mail related classes

public partial class Controls_Reviews_Form : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void submitReview_Click(object sender, EventArgs e)
    {
        try { 
            var PTitle = Page.Title;
            var bodyContent = "<strong>Course:</strong> " + PTitle + "<br>" + "<strong>Display Name:</strong> " + displayName.Text + "<br>" + "<strong>Review:</strong> " + reviewComments.Text;
            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();
     
                MailAddress fromAddress = new MailAddress("CalZ101Z@gmail.com");
                message.To.Add("CalZ101Z@gmail.com");
                message.From = fromAddress;
                message.Subject = "Review From Website";
                message.IsBodyHtml = true;
                message.Body = bodyContent;
                smtpClient.Host = "smtp.gmail.com";   // We use gmail as our smtp client
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("CalZ101Z@gmail.com", "fz3TuuNQv160");

                smtpClient.Send(message);
                success.Text = "Your Message has been sent!";
                success.Attributes["class"] = "alert alert-success";
                displayName.Text = "";
                reviewComments.Text = "";
                
        }
        catch
            {
            success.Text = "Message failed to send, please try again later.";
            success.Attributes["class"] = "alert alert-warning";
        }
        }

}
