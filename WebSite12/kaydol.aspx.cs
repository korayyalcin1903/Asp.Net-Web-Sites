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
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.kaydolTableAdapter kaydol = new DataSetTableAdapters.kaydolTableAdapter();
        DataSetTableAdapters.kaydolTableAdapter bul = new DataSetTableAdapters.kaydolTableAdapter();
        if (bul.GetDataBy(txtkad.Text).Count > 0)
            Label1.Text = "kullanıcı mevcut";
        else
            kaydol.InsertQuery(txtad.Text, txtsoyad.Text, txtkad.Text, txtparola.Text, txtparolat.Text);
        DataBind();

    }
}