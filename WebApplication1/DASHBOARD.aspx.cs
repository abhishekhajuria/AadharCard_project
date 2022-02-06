using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;


namespace WebApplication1
{
    public partial class DASHBOARD : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        HttpPostedFile postedFile;
        string fileName;
        string fileExtension;
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
        byte[] bytes;
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            //image insertion


            string folderPath = Server.MapPath("~/Files/");
            postedFile = FileUpload1.PostedFile;
            fileName = Path.GetFileName(postedFile.FileName);
            fileExtension = Path.GetExtension(fileName);
            int fileSize = postedFile.ContentLength;
            string fel = fileExtension.ToLower();
            
            bytes = new byte[] { byte.MinValue };
           
            if (fel == ".jpg" || fel == ".png" || fel == ".jpeg" || fel == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader br = new BinaryReader(stream);
                bytes = br.ReadBytes((int)stream.Length);
                
                if (!Directory.Exists(folderPath))
                {
                  
                    Directory.CreateDirectory(folderPath);
                }
               
                FileUpload1.SaveAs(folderPath + fileName);
             
               picturebox2.ImageUrl = "~/Files/" + fileName;
            
             
            }
            

          
            string query = "insert into signUp values(@fname,@lname,@gender,@age,@phnumber,@address,@adharNo,@image)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname",txtfname.Text);
            cmd.Parameters.AddWithValue("@lname",txtlname.Text);
            cmd.Parameters.AddWithValue("@gender",DropDownList1.Text);
            cmd.Parameters.AddWithValue("@age",txtage.Text);
            cmd.Parameters.AddWithValue("@phnumber",txtnum.Text);
            cmd.Parameters.AddWithValue("@address",txtaddress.Text);
            cmd.Parameters.AddWithValue("@adharNo", txtadhar.Text);
            cmd.Parameters.AddWithValue("@image", bytes);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Data Stored Sucessfully...!!');",true);
                
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Failed  ')</script>");
                ClearControls();
            }
            con.Close();

        }
        void ClearControls()
        {
            txtfname.Text = txtlname.Text = txtage.Text = txtadhar.Text = txtaddress.Text = txtnum.Text = " ";
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
