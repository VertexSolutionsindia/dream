﻿#region " Using "
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Security;
using Microsoft.Reporting.WebForms;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;


using System.ComponentModel;

using System.Drawing;

using System.Windows.Forms;
using System.Data.SqlClient;
using System.IO;
using System.Net;
#endregion

public partial class Admin_Email_marketting : System.Web.UI.Page
{
    public static int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (User.Identity.IsAuthenticated)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con);
                SqlDataReader dr;
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    company_id = Convert.ToInt32(dr["com_id"].ToString());
                }
                con.Close();
            }


            contact();
            contact1();
           

        }

    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    protected void ImageButton2_Click(object sender, EventArgs e)
    {
        TextBox4.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = "";
        String value1 = TextBox1.Text;
        Char delimiter1 = ',';
        String[] substrings1 = value1.Split(delimiter1);
        foreach (var substring1 in substrings1)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd1 = new SqlCommand("select * from add_contact where Email_add='" + substring1 + "'", con1);
            con1.Open();
            SqlDataReader dr1;
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                name = name + dr1["Customer_name"].ToString() + "-" + dr1["Email_add"].ToString() + ",";
            }

        }
      
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd = new SqlCommand("insert into Email_Details values(@Email_add,@message,@com_id)", con);
        cmd.Parameters.AddWithValue("@Email_add", TextBox1.Text);
        cmd.Parameters.AddWithValue("@message", TextBox2.Text);
        cmd.Parameters.AddWithValue("@com_id", company_id);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        String value = TextBox1.Text;
        Char delimiter = ',';
        String[] substrings = value.Split(delimiter);
        foreach (var substring in substrings)
        {
            if (substring == "")
            {
                Response.Redirect("Email_marketting.aspx");
            }
            else
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("support@shobaelectricals.com");
                mail.To.Add(substring);


                mail.Subject = "Mail from vertex solutions Pvt ltd";
                mail.IsBodyHtml = true;
                mail.Body = "<html><head></head><body>" + "<p>" + TextBox2.Text + "</p>" + "</br>" + "</body></html>";
                SmtpClient smtp = new SmtpClient("relay-hosting.secureserver.net", 25); smtp.UseDefaultCredentials = false; smtp.Credentials = new NetworkCredential("support@shobaelectricals.com", "shobatelgi123");
                smtp.Send(mail);
            }
           
        }

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Email sent successfully')", true);
        TextBox1.Text = "";
        TextBox2.Text = "";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + " ,";

    }
    private void contact()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from add_contact", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView41.DataSource = dt1;
        GridView41.DataBind();






    }
    protected void GridView41_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView41.SelectedRow;

        TextBox4.Text = TextBox4.Text + row.Cells[2].Text + ",";

    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox4.Text;
        ModalPopupExtender19.Hide();
    }
    private void contact1()
    {
       
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Email_group where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();






    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        TextBox3.Text = TextBox3.Text + row.Cells[2].Text;

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox3.Text;
        ModalPopupExtender1.Hide();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

}