using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection();
    baglanti.ConnectionString = ("Provider=microsoft.jet.oledb.12.0;DataSource=" + Server.MapPath("~/App_Data/login.accdb"));
    baglanti.Open();
    OleDbCommand komut = new OleDbCommand("select kullanici_adi,sifre from kullanici",baglanti);
    OleDbDataReader oku = komut.ExecuteReader();
    while (oku.Read())
    {
        if (TextBox1.Text == oku[0].ToString() && TextBox2.Text ==
       oku[1].ToString())
        {
            Response.Redirect("Default2.aspx");
        }
        else
        {
            Label1.Text = "Yanlış Kullanıcı Adı ve/veya şifre!";
        }
    }
    baglanti.Close();
    }
}