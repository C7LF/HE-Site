using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fdsc_networks : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime currentDate = DateTime.Now;
        DateTime nextYearDate = currentDate.AddYears(1);
        YearLabel.Text = nextYearDate.Year.ToString();
    }
}