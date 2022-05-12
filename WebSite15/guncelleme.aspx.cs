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
        LblId.Text = GridView1.SelectedRow.Cells[1].Text;
        Txtad.Text = GridView1.SelectedRow.Cells[2].Text;
        Txteposta.Text = GridView1.SelectedRow.Cells[3].Text;
        Txtparola.Text = GridView1.SelectedRow.Cells[4].Text;
        Txtparolat.Text = GridView1.SelectedRow.Cells[5].Text;
        
    }
    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.malzemeTableAdapter dt = new DataSet1TableAdapters.malzemeTableAdapter();
        dt.UpdateQueryb(Txtad.Text,Txteposta.Text,int.Parse(Txtparola.Text),Txtparolat.Text,"images/"+FileUploadIlac.FileName,int.Parse(LblId.Text));
        FileUploadIlac.SaveAs(Server.MapPath("~/images/")+FileUploadIlac.FileName);
        GridView1.DataBind();
    }
}