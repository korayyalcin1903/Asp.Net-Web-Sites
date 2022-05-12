using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class guncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = GridView1.SelectedRow.Cells[0].Text;
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.urunTableAdapter guncelle = new DataSetTableAdapters.urunTableAdapter();
        guncelle.UpdateQuery(TextBox1.Text, TextBox2.Text, TextBox3.Text, "img/" + FileUpload1.FileName, int.Parse(Label1.Text));
        GridView1.DataBind();
    }
}