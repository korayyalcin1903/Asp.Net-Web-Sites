using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "marka")
        {
            GridView1.DataSourceID = "mark";
        }
        else
        {
            GridView1.DataSourceID = "adi";
        }
    }
}