using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using DataLayer;

namespace HCS_Final.Appointment
{
    public partial class AppointmentEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddHealthCareProviderIdPopulate();
                ddPatientIdPopulate();
            }

        }

        private void ddHealthCareProviderIdPopulate()
        {
            //   List<NoteType> noteTypeList = new List<NoteType>();
            HealthCareProviderBO healthCareProviderBO = new HealthCareProviderBO();
            List<SelectListItemBase> dataList = new List<SelectListItemBase>();
            dataList = healthCareProviderBO.GetAllSelect(s => new SelectListItemBase { Text = s.LastName + " " + s.FirstName, Id = s.HealthCareProviderId });
            ddAppointmentId.DataSource = dataList;
            ddAppointmentId.DataTextField = "Text";
            ddAppointmentId.DataValueField = "Id";
            ddAppointmentId.DataBind();


        }
        private void ddPatientIdPopulate()
        {
            //   List<NoteType> noteTypeList = new List<NoteType>();
            PatientBO patientBO = new PatientBO();
            List<SelectListItemBase> dataList = new List<SelectListItemBase>();
            dataList = patientBO.GetAllSelect(s => new SelectListItemBase { Text = s.LastName + " " + s.FirstName, Id = s.PatientId });
            ddPatientId.DataSource = dataList;
            ddPatientId.DataTextField = "Text";
            ddPatientId.DataValueField = "Id";
            ddPatientId.DataBind();


        }

        protected void btBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentList.aspx");
        }

        protected void btUpdateA_Click(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
            {
                AppointmentBO AppointmentBO = new AppointmentBO();
                DataLayer.Appointment editAppointment = new DataLayer.Appointment();

                int AppointmentId = Convert.ToInt32(Session["PrimaryKeyAppointment"]);

                editAppointment = AppointmentBO.Get(AppointmentId);
                if (editAppointment == null)
                {
                    string str = string.Format("Appointment with Id {0} not found for Update.", AppointmentId);
                    lblMsg.Text = str;
                    return;
                }

                string AStartFrom = txtAStartFrom.Text.Trim();
                if (!string.IsNullOrEmpty(AStartFrom))
                {
                    editAppointment.StartFrom = DateTime.Parse(AStartFrom);
                    editAppointment.EndTo = DateTime.Parse(txtAEndTo.Text.Trim());

                    editAppointment.AppointmentId = long.Parse(ddAppointmentId.SelectedValue);
                    editAppointment.PatientId = long.Parse(ddPatientId.SelectedValue);
                    editAppointment.NoShow = cbANoShow.Checked;
                    editAppointment.Cancelled = cbACancelled.Checked;
                    editAppointment.Active = cbAActive.Checked;
                    editAppointment.DateEntered = DateTime.Now;
                    editAppointment.UserIdEntered = 0;

                    AppointmentBO.Edit(editAppointment);
                    AppointmentBO.Save();


                   
                    string msg = string.Format("Appointment {0} Updated.", AStartFrom);

                    Response.Redirect("~/AppointmentPages/AppointmentList.aspx?msg=" + msg);

                }
                else
                {
                 string str = string.Format("First Name field Can't be empty.");
                    lblMsg.Text = str;
                    return;
                 
                }
            }

        }
    }
}