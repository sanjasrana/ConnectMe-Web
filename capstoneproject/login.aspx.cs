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
using System.Text;
using System.Security.Cryptography;

namespace capstoneproject
{
    public partial class login : System.Web.UI.Page
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

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            SqlConnection login_con = new SqlConnection(conStr);

            try
            {
                string passwordHash = hashPassword(tb_Password.Text);
                Debug.WriteLine(">>>", passwordHash, "<<<");
                string login_query = "SELECT * FROM Account where username = '"+ tb_Username.Text +"' and password = '" + passwordHash + "'";
                SqlCommand login_cmd = new SqlCommand(login_query, login_con);
                login_con.Open();
                SqlDataReader reader = login_cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    // login successfull
                    reader.Read();
                    Session["name"] = reader["Name"];
                    Response.Redirect("LandingPage.aspx");
                    reader.Close();
                }
                else
                {
                    // invalid credentials
                    lbl_msg.Text = "Invalid Credentials!!";
                }

            }
            catch (SqlException err)
            {
                lbl_msg.Text = "Some error occured!";
                Debug.WriteLine("Connection could not be established. Error: " + err.Message);
            } finally
            {
                login_con.Close();
            }

        }
    }
}