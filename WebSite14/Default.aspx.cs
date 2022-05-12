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
   
    protected void kurtar_Click(object sender, EventArgs e)
{
    DataSetTableAdapters.hesapTableAdapter kayit = new DataSetTableAdapters.hesapTableAdapter();
        kayit.InsertQuery(tel.Text);
        DataBind();
}
}


    
