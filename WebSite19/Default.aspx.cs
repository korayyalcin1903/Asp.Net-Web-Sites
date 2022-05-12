using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString);
    OleDbDataAdapter da;
    OleDbCommand komut;
    DataTable dt;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string sorgu = "SELECT *FROM hesap";
        da = new OleDbDataAdapter(sorgu, con);
        dt = new DataTable();
        con.Open();
        da.Fill(dt);
        con.Close();
        DataBind();
    }
    protected void kurtar_Click(object sender, EventArgs e)
    {
        string sorgu = "INSERT INTO hesap (tel_no) VALUES (@num)";
        komut = new OleDbCommand(sorgu, con);
        komut.Parameters.AddWithValue("@num", tel.Text);
        con.Open();
        komut.ExecuteNonQuery();
        con.Close();
    }
}