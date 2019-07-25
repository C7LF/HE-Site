using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class getImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Profile.Picture != null)
        {
            Response.ContentType = Profile.PictureType;
            Response.BinaryWrite(Profile.Picture);
            Response.End();
        }
    }
}