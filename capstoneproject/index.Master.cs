using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace capstoneproject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                // already logged in
                lbl_loggedInName.Text = Session["name"].ToString();
                UserLoggedIn.Visible = true;
                SignUp.Visible = false;
                LogIn.Visible = false;
                LogOut.Visible = true;
            }
            else
            {
                LogOut.Visible = false;
                UserLoggedIn.Visible = false;
            }
        }

        protected void lbtn_logout_Click(object sender, EventArgs e)
        {
            Session["name"] = null;
            Response.Redirect(Request.RawUrl);
        }
    }

}