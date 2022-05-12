using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        oyuncuTableAdapters.yonetimTableAdapter giris = new oyuncuTableAdapters.yonetimTableAdapter();
        if (giris.GetDataBy2(txteposta.Text).Count > 0)
        {
            if (txtsifre.Text == giris.GetDataBy2(txteposta.Text).Rows[0][4].ToString())
            {
                Response.Redirect("forvet.aspx");
            }
            else
                Label1.Text = "parola yanlış";
        }
        else
            Label1.Text = "e posta yanlış";
    }
}