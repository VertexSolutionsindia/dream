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
using System.Web.UI.WebControls;
using System.Drawing;
#endregion


public partial class Admin_Department_Entry : System.Web.UI.Page
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

            getinvoiceno();
            //show_category();
            showrating();
            BindData();

            active();
            created();


           

        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        Label29.Text = ROW.Cells[1].Text;
        TextBox16.Text = ROW.Cells[2].Text;
        TextBox9.Text = ROW.Cells[3].Text;
        TextBox5.Text = ROW.Cells[4].Text;
        TextBox6.Text = ROW.Cells[5].Text;
        TextBox10.Text = ROW.Cells[6].Text;
       
        this.ModalPopupExtender3.Show();
    }
    protected void Button16_Click(object sender, EventArgs e)
    {

      

        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Department set Depart_Name='" + HttpUtility.HtmlDecode(TextBox16.Text) + "',Incharge='" + HttpUtility.HtmlDecode(TextBox5.Text) + "',Branch_Location='" + HttpUtility.HtmlDecode(TextBox6.Text) + "',Team_Members='" + HttpUtility.HtmlDecode(TextBox10.Text) + "',floor_no='" + HttpUtility.HtmlDecode(TextBox9.Text) + "' where Depart_Code='" + Label29.Text + "'  and Com_Id='" + company_id + "' ", CON);

        CON.Open();
        cmd.ExecuteNonQuery();
        CON.Close();
        Label31.Text = "Updated successfuly";

        this.ModalPopupExtender3.Hide();
        BindData();
        getinvoiceno();


    }
    protected void Button17_Click(object sender, EventArgs e)
    {
       

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("delete from Department where Depart_Code='" + Label29.Text + "'  and Com_Id='" + company_id + "' ", con1);
        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();


        Label31.Text = "Deleted successfuly";

        this.ModalPopupExtender3.Hide();
        BindData();
        getinvoiceno();

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            //Finiding checkbox control in gridview for particular row
            CheckBox chkdelete = (CheckBox)gvrow.FindControl("CheckBox3");
            //Condition to check checkbox selected or not
            if (chkdelete.Checked)
            {
                //Getting UserId of particular row using datakey value
                int usrid = Convert.ToInt32(gvrow.Cells[1].Text);
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

                con.Open();
                SqlCommand cmd = new SqlCommand("delete from Department where Depart_Code='" + usrid+"' and Com_Id='" + company_id + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
        }
        BindData();
        getinvoiceno();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter department name')", true);
        }
        else
        {

           SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1 = new SqlCommand("select * from Department where Depart_Name='" + TextBox3.Text + "' and Com_Id='" + company_id + "'  ", con1);
            con1.Open();
            SqlDataReader dr1;
            dr1=cmd1.ExecuteReader();
            if (dr1.HasRows)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Department already exist')", true);

            }
            else
            {

                SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("insert into Department values(@Depart_Name,@Incharge,@Branch_Location,@Com_Id,@Team_Members,@floor_no,@Depart_Code)", CON);

                cmd.Parameters.AddWithValue("@Depart_Name", HttpUtility.HtmlDecode(TextBox3.Text));
                cmd.Parameters.AddWithValue("@Incharge", HttpUtility.HtmlDecode(TextBox2.Text));
                cmd.Parameters.AddWithValue("@Branch_Location", HttpUtility.HtmlDecode(TextBox4.Text));
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                cmd.Parameters.AddWithValue("@Team_Members", HttpUtility.HtmlDecode(TextBox7.Text));
                cmd.Parameters.AddWithValue("@floor_no", TextBox8.Text);
                cmd.Parameters.AddWithValue("@Depart_Code", Label1.Text);
                CON.Open();
                cmd.ExecuteNonQuery();
                CON.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Department Details created successfully')", true);
                BindData();
                //show_category();
                getinvoiceno();
                TextBox3.Text = "";
                TextBox2.Text = "";
                TextBox4.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
            }
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox7.Text = "";
        getinvoiceno();
        //show_category();
        TextBox8.Text = "";
    }
    private void active()
    {

    }
    protected void lnkView_Click(object sender, EventArgs e)
    {
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;


        LinkButton Lnk = (LinkButton)sender;
        string name = Lnk.Text;
        Session["name"] = name;
        Response.Redirect("Account_show.aspx");


    }

    private void created()
    {

    }
    protected void BindData()
    {
       
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Department where Com_Id='" + company_id + "' ORDER BY Depart_Code asc", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();

    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
      
        ImageButton img = (ImageButton)sender;
        GridViewRow row = (GridViewRow)img.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Department where Depart_Code='" + row.Cells[1].Text + "' and Com_Id='" + company_id + "' ", con);
        cmd.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Deaprtment Details deleted successfully')", true);

        BindData();
        //show_category();
        getinvoiceno();


    }
    private void getinvoiceno()
    {
        int a;

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con1.Open();
        string query = "Select Max(Depart_Code) from Department where Com_Id='" + company_id + "'";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            string val = dr[0].ToString();
            if (val == "")
            {
                Label1.Text = "1";
            }
            else
            {
                a = Convert.ToInt32(dr[0].ToString());
                a = a + 1;
                Label1.Text = a.ToString();
            }
        }
    }
    //private void show_category()
    //{

    //    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    //    SqlCommand cmd = new SqlCommand("Select * from Department where Com_Id='" + company_id + "' ORDER BY Depart_Code asc", con);
    //    con.Open();
    //    DataSet ds = new DataSet();
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    da.Fill(ds);


    //    DropDownList2.DataSource = ds;
    //    DropDownList2.DataTextField = "Depart_Name";
    //    DropDownList2.DataValueField = "Depart_Code";
    //    DropDownList2.DataBind();
    //    DropDownList2.Items.Insert(0, new ListItem("All", "0"));

    //    con.Close();
    //}
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }

    protected void btnRandom_Click(object sender, EventArgs e)
    {
        Session["name1"] = "";
        Response.Redirect("~/Admin/Category_Add.aspx");
    }

    private void showcustomertype()
    {

    }
    private void showrating()
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindData();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[0].Text = "Page " + (GridView1.PageIndex + 1) + " of " + GridView1.PageCount;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    //protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    //    SqlCommand CMD = new SqlCommand("select * from Department where Depart_Code='" + DropDownList2.SelectedItem.Value + "' and Com_Id='" + company_id + "' ORDER BY Depart_Code asc", con1);
    //    DataTable dt1 = new DataTable();
    //    con1.Open();
    //    SqlDataAdapter da1 = new SqlDataAdapter(CMD);
    //    da1.Fill(dt1);
    //    GridView1.DataSource = dt1;
    //    GridView1.DataBind();
    
    //}
    protected void Button5_Click(object sender, EventArgs e)
    {
       
    }

}