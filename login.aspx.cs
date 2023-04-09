using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    
    SqlCommand cmd;
    SqlDataReader dr;
    string qry;
    HttpCookie ck;
    HttpCookie ad;

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    { 
        con.Open();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        qry = "select * from login where username='" + name.Text + "'and password='" + pass.Text + "'";
        cmd= new SqlCommand(qry, con);
     dr = cmd.ExecuteReader();
     msg.Text = "kuch bhi ,ehta";
        

        if (dr.HasRows)
        {
            if(name.Text=="admin")
            {
                ad= new HttpCookie("acook");
                ad.Values.Add("un", name.Text);
                Response.Cookies.Add(ad);
                Response.Redirect("admin.aspx");
                

            }
            else{
                
                ck= new HttpCookie("acook");
                ck.Values.Add("un", name.Text);
                Response.Cookies.Add(ck);
                Response.Redirect("testselection.aspx");
            }
        }
        else{
            msg.Text="Invalid Credentials";
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}