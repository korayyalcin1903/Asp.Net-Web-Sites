using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class malzemeara : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["emre"].ToString();
    }
    protected void BtnAra_Click(object sender, EventArgs e)
    {
        if (RadioButtonSec.SelectedIndex == 0)
        {
            GridView1.DataSourceID = "ad";
        }
        else   if (RadioButtonSec.SelectedIndex == 1)
        {
            GridView1.DataSourceID = "marka";
        }
    }
}