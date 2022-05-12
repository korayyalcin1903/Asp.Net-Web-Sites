using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class veri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        id.Text = GridView1.SelectedRow.Cells[0].Text;
        txtadi.Text = GridView1.SelectedRow.Cells[1].Text;
        txtsoyadi.Text = GridView1.SelectedRow.Cells[2].Text;
        txteposta.Text = GridView1.SelectedRow.Cells[3].Text;
        txtsifre.Text = GridView1.SelectedRow.Cells[4].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        oyuncuTableAdapters.yonetimTableAdapter guncelle = new oyuncuTableAdapters.yonetimTableAdapter();
        guncelle.UpdateQuery(txtadi.Text, txtsoyadi.Text, txteposta.Text, txtsifre.Text, int.Parse(id.Text));
        GridView1.DataSourceID = "ObjectDataSource1";
        GridView1.DataBind();
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "AccessDataSource1";
        GridView1.DataBind();

    }
}