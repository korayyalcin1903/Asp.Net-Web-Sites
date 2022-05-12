using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class urunekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("img/" + FileUpload1.FileName));
            DataSetTableAdapters.urunTableAdapter kayit = new DataSetTableAdapters.urunTableAdapter();
            kayit.InsertQuery(TextBox1.Text, TextBox2.Text, TextBox3.Text, "img/" + FileUpload1.FileName);
            GridView1.DataBind();
            Label1.Text = "";
        }
        else
            Label1.Text = "Herhangi bir dosya seçmediniz";
    }
}