using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kaydol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.girisTableAdapter kayit = new DataSet1TableAdapters.girisTableAdapter();
        DataSet1TableAdapters.girisTableAdapter bul = new DataSet1TableAdapters.girisTableAdapter();
        if (bul.GetDataBy1(txtkad.Text).Count > 0)
            Label1.Text = "kullanıcı mevcut";
        else
        kayit.InsertQuery(txtad.Text, txtsoyad.Text, txtkad.Text, txtparola.Text, txtparolat.Text);
        DataBind();
    }
}