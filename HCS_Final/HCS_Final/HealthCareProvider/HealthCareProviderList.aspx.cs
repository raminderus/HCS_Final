using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using  BusinessLayer;

namespace HCS
{
    public partial class HealthCareProviderList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("HealthCareProviderReport.aspx");
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            HealthCareProviderBO healthcare = new HealthCareProviderBO();
            GridView1.VirtualItemCount = healthcare.Count(x => x.RegistrationNumber.Contains(TextBox1.Text.Trim()));
            GridView1.DataSource = healthcare.Find(x => x.RegistrationNumber.Contains(TextBox1.Text.Trim()), 0, GridView1.PageSize)
                   .ToList();
            GridView1.DataBind();
            Button1.Enabled = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("PrimaryKeyHealthCareProvider", GridView1.SelectedDataKey.Value);
            Response.Redirect("~/HealthCareProvider/HealthCareEdit.aspx");
        }

        protected void btnAdd(object sender, EventArgs e)
        {
            Response.Redirect("HealthCareAdd.aspx");
        }

       

        protected void btnedit(object sender, EventArgs e)
        {
            Response.Redirect("HealthCareEdit.aspx");
        }

        protected void btnMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }
    }
}