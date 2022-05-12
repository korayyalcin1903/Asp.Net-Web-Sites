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
        DataSetTableAdapters.kaydolTableAdapter bul = new DataSetTableAdapters.kaydolTableAdapter();
        if (bul.GetDataBy(txtkadi.Text).Count > 0)
        {
            if (txtparola.Text == bul.GetDataBy(txtkadi.Text).Rows[0][4].ToString())
            {
                Session.Add("kullanici", bul.GetDataBy(txtkadi.Text).Rows[0][1].ToString());
                Response.Redirect("anasayfa.aspx");
            }
            else
                Label1.Text = "parola yanlış";
        }
        else
            Label1.Text = "kullanıcı adı yanlış";
    }
}