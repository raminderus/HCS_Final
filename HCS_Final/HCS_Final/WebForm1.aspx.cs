using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCS_Final
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Appointment/AppointmentList.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NoteType/NoteTypeList.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Note/NoteList.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HealthCareProvider/HealthCareProviderList.aspx");
        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PatientType/PatientList.aspx");
        }
    }
}