using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string ka = "yusufözcan@gmail.com";
    string sifre = "1234";
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox6.Text == ka & TextBox7.Text == sifre)
        {
            Response.Redirect("admin.aspx");
        }
        else
        {
            Response.Write("hatalı giriş");
        }
    }
}