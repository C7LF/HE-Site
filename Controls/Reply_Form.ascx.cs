using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; // Provides access to the File class for reading the file
using System.Net.Mail; // Provides access to the various mail related classes

public partial class Controls_Reply_form : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void replyc_Click(object sender, EventArgs e)
    {

                success.Text = "Your reply has been posted";
                success.Attributes["class"] = "alert alert-success";
                forumreplycomment.Text = "";
                
        }


}
