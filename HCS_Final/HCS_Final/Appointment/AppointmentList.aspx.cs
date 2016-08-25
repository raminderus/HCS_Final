using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
namespace HCS
{
    public partial class AppointmentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AppointmentBO appointmentbo = new AppointmentBO();
            long l = Convert.ToInt64((TextBox1.Text.Trim()));
            GridView1.VirtualItemCount = appointmentbo.Count(x => x.AppointmentId.Equals(l));
            GridView1.DataSource = appointmentbo.Find(x => x.AppointmentId.Equals(l), 0, GridView1.PageSize)
                   .ToList();
            GridView1.DataBind();
            Button1.Enabled = true;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("PrimaryKeyAppointment", GridView1.SelectedDataKey.Value);
            Response.Redirect("~/Appointment/AppointmentEdit.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentAdd.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentEdit.aspx");
        }
    }
}