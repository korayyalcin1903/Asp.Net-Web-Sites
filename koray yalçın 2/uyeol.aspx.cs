using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uyeol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        oyuncuTableAdapters.yonetimTableAdapter kayit = new oyuncuTableAdapters.yonetimTableAdapter();
        oyuncuTableAdapters.yonetimTableAdapter bul = new oyuncuTableAdapters.yonetimTableAdapter();
        if (bul.GetDataBy2(txtadi.Text).Count > 0)
        {
            Label2.Text = "kullanıcı mevcut";
        }
        else
        {
            kayit.InsertQuery(txtadi.Text, txtsoyadi.Text, txteposta.Text, txtsifre.Text);
            DataBind();
        }
    }
}