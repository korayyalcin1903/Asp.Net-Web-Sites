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
    OleDbCommand komut;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        komut= new OleDbCommand();
        komut.Parameters.AddWithValue("@pnumara", TextBox1.Text);
        komut.Parameters.AddWithValue("@pad_soyad",TextBox2.Text);
        komut.ExecuteNonQuery();

    }
}

