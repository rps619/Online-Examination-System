using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class deleteuser : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataReader dr;
    string qry;
    HttpCookie ad;

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void duser_Click(object sender, EventArgs e)
    {
        con.Open();

        qry = "delete from login where username='" + userlist.Text + "'";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        
        //Response.Write("<script>alert('User successfully deleted')</Script>");
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User successfully deleted')", true);
        Response.Redirect("deleteuser.aspx");
    }
}