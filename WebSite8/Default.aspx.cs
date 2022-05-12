using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string kad, ksifre;
        kad = TextBox1.Text;
        ksifre = TextBox2.Text;
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data\\giris.accdb"));
        OleDbCommand komut = new OleDbCommand();
        string sorgu = "Select* from kullanici where StrComp(k_ad,@ad,0)=0 and StrComp(k_sifre,@sifre, 0) = 0";
        komut = new OleDbCommand(sorgu, baglanti);
        komut.Parameters.AddWithValue("@ad", kad);
        komut.Parameters.AddWithValue("@sifre", ksifre);
        baglanti.Open();
        OleDbDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
            Session.Add("kullanici", kad);
            Response.Redirect("default2.aspx");
        }
        else
        {
            Label1.Text = "Giriş Başarısız";
        }
        baglanti.Close();
    }
}