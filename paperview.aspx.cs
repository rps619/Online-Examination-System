﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System;

public partial class paperview : System.Web.UI.Page
{
    
    public SqlCommand cmd;
    public SqlDataReader dr;
    public string qry;
    
    string settype;
    public int ans;
    HttpCookie ad;
    
    
    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
        con.Open();
        settype = System.Convert.ToString(Request.QueryString["settype"]);
        HiddenField1.Value = testlist.SelectedValue;
        qry = "select * from question where settype='" + HiddenField1.Value + "'order by qid";
        cmd= new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("setqpaper.aspx");
    }
    protected void testlist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}