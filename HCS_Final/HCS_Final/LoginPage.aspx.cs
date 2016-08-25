using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using DataLayer;


namespace HCS
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnButton1_Click(object sender, EventArgs e)
        {
         HealthCareProviderBO healthcarebo = new HealthCareProviderBO();

            HealthCareProvider user = healthcarebo.IsAuthenticatedUser(txtText1.Text, txtText2.Text);

            if (user != null)
            {
                Session.Add("User",user);
                Response.Redirect("WebForm1.aspx");
               // Response.Redirect("~/NoteType/NoteTypeList.aspx");
            }
            else
            {
            
                Response.Write("Try Again!!");
            }
        }
    }
}