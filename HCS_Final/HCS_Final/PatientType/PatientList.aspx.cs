using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace HCS
{
    public partial class PatientList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PatientBO patientbo = new PatientBO();
            GridView1.VirtualItemCount = patientbo.Count(x => x.HealthCardNo.Contains(TextBox1.Text.Trim()));
            GridView1.DataSource = patientbo.Find(x => x.HealthCardNo.Contains(TextBox1.Text.Trim()), 0, GridView1.PageSize)
                   .ToList();
            GridView1.DataBind();
            Button1.Enabled = true;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientBOReport.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientAdd.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientEdit.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("PrimaryKeyPatient", GridView1.SelectedDataKey.Value);
            Response.Redirect("~/PatientType/PatientEdit.aspx");

        }

        protected void btnMain(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }
    }
}