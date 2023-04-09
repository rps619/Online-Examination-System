using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class editqpaper : System.Web.UI.Page
{



    SqlCommand cmd;
    SqlDataReader dr;
    string qry;

    public SqlCommand rcmd;
    public SqlDataReader rdr;
    public string rqry;

    public string settype;
    Int16 ans;
    int qid;
    HttpCookie ad;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
        con.Open();
        rqry = "select * from question where qid=" + qid;
        rcmd = new SqlCommand(rqry, con);
        rdr = rcmd.ExecuteReader();

        while (rdr.Read())
        {

            question.Text = Convert.ToString(rdr.GetValue(1));
            opt1.Text = Convert.ToString(rdr.GetValue(3));
            opt2.Text = Convert.ToString(rdr.GetValue(4));
            opt3.Text = Convert.ToString(rdr.GetValue(5));
            opt4.Text = Convert.ToString(rdr.GetValue(6));
            ans = Convert.ToInt16(rdr.GetValue(7));

            if (ans == 1)
            {
                RadioButton1.Checked = true;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
                RadioButton4.Checked = false;
            }
            if (ans == 2)
            {
                RadioButton1.Checked = false;
                RadioButton2.Checked = true;
                RadioButton3.Checked = false;
                RadioButton4.Checked = false;  
            }
            if (ans == 3)
            {
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = true;
                RadioButton4.Checked = false;
            }
            if (ans == 4)
            {
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
                RadioButton4.Checked = true;
            }
        
        }
        con.Close();

    }
    protected void update_Click(object sender, EventArgs e)
    {

    }
}