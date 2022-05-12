using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.hastaTableAdapter kayit = new DataSetTableAdapters.hastaTableAdapter();
        int tc=Convert.ToInt32(txttc.ToString());
        kayit.InsertQuery(tc.ToString(), txtha.Text, txths.Text, txthno.Text);
        
    }
}