﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class DASHBOARD : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Response.Write("Welcome to Adhar Uidai Mr  " + Session["user"].ToString());

            }
            else
            {
                Response.Redirect("LOGIN.aspx");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {

                    Response.Redirect("LOGIN.aspx");
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into signUp values(@fname,@lname,@gender,@age,@phnumber,@address)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname",txtfname.Text);
            cmd.Parameters.AddWithValue("@lname",txtlname.Text);
            cmd.Parameters.AddWithValue("@gender",DropDownList1.Text);
            cmd.Parameters.AddWithValue("@age",txtage.Text);
            cmd.Parameters.AddWithValue("@phnumber",txtnum.Text);
            cmd.Parameters.AddWithValue("@address",txtaddress.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Data Stored Sucessfull...!!');",true);
                ClearControls()
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Failed  ')</script>");
                ClearControls()
            }
            con.Close();

        }
        void ClearControls()
        {
            txtfname.Text = txtlname.Text = txtage.Text = txtaddress.Text = txtnum.Text = " ";
            DropDownList1.ClearSelection();
        }
    }
}
