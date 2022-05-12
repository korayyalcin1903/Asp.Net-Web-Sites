using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yeniuye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnKaydet_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.kullaniciTableAdapter dt = new DataSet1TableAdapters.kullaniciTableAdapter();
        dt.InsertQuerya(TxtKullaniciAdi.Text, TxtEposta.Text, TextBox3.Text, TxtParolaTekrar.Text);
        
    }
}