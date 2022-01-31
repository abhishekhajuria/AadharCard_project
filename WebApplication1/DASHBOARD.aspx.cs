using System;
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
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname",txtfname.Text);
            cmd.Parameters.AddWithValue("@lname",txtlname.Text);
            cmd.Parameters.AddWithValue("@gender",DropDownList1.Text);
            cmd.Parameters.AddWithValue("@age",txtage.Text);
            cmd.Parameters.AddWithValue("@phnumber",txtnum.Text);
            cmd.Parameters.AddWithValue("@address",txtaddress.Text);
            cmd.Parameters.AddWithValue("@adharNo", txtadhar.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Failed  ')</script>");
            }
            con.Close();

        }
        void ClearControls()
        {
            txtfname.Text = txtlname.Text = txtage.Text = txtaddress.Text = txtnum.Text = " ";
            DropDownList1.ClearSelection();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            txtfname.Text = txtlname.Text = txtage.Text = txtaddress.Text = txtnum.Text = " ";
            DropDownList1.ClearSelection();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[signUp]
      WHERE [adharNo]='"+txtadhar.Text+ "'",con);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Data Deleted Sucessfully...!!');", true);
                ClearControls();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Failed  ')</script>");
                ClearControls();
            }
            con.Close();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(@"UPDATE [dbo].[signUp]
   SET [fname] = '" + txtfname.Text + "',[lname] = '" +txtlname.Text + "',[gender] = '" +DropDownList1.Text + "', [phnumber] = '" + txtnum.Text + "',[age] = '" + txtage.Text + "',[address] = '" + txtaddress.Text + "' WHERE [adharNo]='" + txtadhar.Text + "'", con);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Data Updated Sucessfully...!!');", true);
                ClearControls();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Failed  ')</script>");
                ClearControls();
            }
            con.Close();

        }
    }
}
