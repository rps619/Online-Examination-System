using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class report : System.Web.UI.Page
{
    public SqlCommand cmd;
    public SqlDataReader dr;
    string qry;
    HttpCookie ad;
    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
        con.Open();
        qry = "select * from results";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
    }
}