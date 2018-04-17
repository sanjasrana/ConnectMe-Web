using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Text;

namespace capstoneproject
{
    public partial class Register : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["ConnectMeConnStr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Response.Redirect("LandingPage.aspx");
            }
        }

        private string hashPassword(string plainPassword)
        {
            SHA256 PasswordHasher = SHA256Managed.Create();
            byte[] passwordHash = PasswordHasher.ComputeHash(Encoding.ASCII.GetBytes(plainPassword));
            string sha256Password = Encoding.ASCII.GetString(passwordHash);

            return sha256Password;
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            SqlConnection register_con = new SqlConnection(conStr);

            try
            {
                string sha256Password = hashPassword(tb_Password.Text);
                Debug.WriteLine(">>>", sha256Password, "<<<");
                string register_query = "INSERT into Account values('" + tb_Username.Text.Trim() + "', '" + sha256Password + "', '" + tb_name.Text.Trim() + "')";
                SqlCommand register_cmd = new SqlCommand(register_query, register_con);
                register_con.Open();
                int rowsUpdated = register_cmd.ExecuteNonQuery();

                if (rowsUpdated == 1)
                {
                    // registration successfull
                    lbl_msg.ForeColor = System.Drawing.Color.Green;
                    lbl_msg.Text = "Registration successful!";
                }
                else
                {
                    // registration failed
                    lbl_msg.Text = "Could not register. Some error.";
                    Debug.WriteLine("Could not register");
                }
            }
            catch (SqlException err)
            {
                if (err.Message.Contains("Violation of PRIMARY KEY constraint"))
                {
                    lbl_msg.ForeColor = System.Drawing.Color.Red;
                    lbl_msg.Text = "That username already exists!";
                }
                else
                {
                    lbl_msg.Text = "Some error occured!";
                    Debug.WriteLine("Connection could not be established. Error: " + err.Message);
                }
            }
            finally
            {
                register_con.Close();
            }

        }
    }
}