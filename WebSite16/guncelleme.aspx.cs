using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class guncelleme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Lblid.Text = GridView1.SelectedRow.Cells[1].Text;
        Txtad.Text = GridView1.SelectedRow.Cells[2].Text;
        Txteposta.Text = GridView1.SelectedRow.Cells[3].Text;
        Txtparola.Text = GridView1.SelectedRow.Cells[4].Text;
        Txtparolat.Text = GridView1.SelectedRow.Cells[5].Text;
        
    }
    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.kullaniciTableAdapter guncelle = new DataSet1TableAdapters.kullaniciTableAdapter();
        guncelle.UpdateQuery(Txtad.Text, Txteposta.Text, Txtparola.Text, Txtparolat.Text, int.Parse(Lblid.Text));
        GridView1.DataBind();
        DataBind();
    }
}