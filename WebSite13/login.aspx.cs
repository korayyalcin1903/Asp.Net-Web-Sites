using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.girisTableAdapter bul = new DataSet1TableAdapters.girisTableAdapter();
        if (bul.GetDataBy1(TextBox1.Text).Count > 0)
        {
            if (TextBox2.Text == bul.GetDataBy1(TextBox1.Text).Rows[0][4].ToString())
            {
                Session.Add("kullanici", TextBox1.Text);
                Response.Redirect("anasayfa.aspx");
                
            }
            else
                Label1.Text = "parola yanlış";
        }
        else
            Label1.Text="kullanıcı adı yanlış";
    }
}