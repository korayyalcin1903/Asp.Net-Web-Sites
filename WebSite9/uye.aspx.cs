using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string kad = "aybaylardan_06@gmail.com";
    string sifre = "1234";

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (giris1.Text == kad && giris2.Text == sifre) 
        {
            Response.Redirect("anasayfa2.aspx");
        }
        else
        {
            Hata.Text = "Lütfen girdiğiniz bilgileri kontrol ediniz.";
        }
    }
}