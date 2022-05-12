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

    protected void BtnGiris_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.kullaniciTableAdapter bul=new DataSet1TableAdapters.kullaniciTableAdapter();
        if(bul.GetDataBy1(TxtKullanici.Text).Count>0)
        {
            if(TxtParola.Text==bul.GetDataBy1(TxtKullanici.Text).Rows[0][3].ToString())
            Response.Redirect("malzemeara.aspx");
            else
            Label1.Text="parola yanlış";
        }
        else
            Label1.Text="kullanıcı adı yanlış";
    }
}