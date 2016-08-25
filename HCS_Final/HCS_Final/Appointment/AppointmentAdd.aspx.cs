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
    public partial class AppointmentAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCreateNewHCP_Click(object sender, EventArgs e)
        {
            if (ModelState.IsValid)
            {
                HealthCareProviderBO HealthCareProviderBO = new HealthCareProviderBO();
                DataLayer.HealthCareProvider newHealthCareProvider = new DataLayer.HealthCareProvider();
                string hcpFirstName = txtHCPFirstName.Text.Trim();
                if (!string.IsNullOrEmpty(hcpFirstName))
                {
                    newHealthCareProvider.FirstName = hcpFirstName;
                    newHealthCareProvider.LastName = txtHCPLastName.Text.Trim();
                    newHealthCareProvider.Speciality = txtHCPSpeciality.Text.Trim();
                    newHealthCareProvider.RegistrationNumber = txtHCPRegistrationNumber.Text.Trim();
                    newHealthCareProvider.Active = cbHCPActive.Checked;
                    newHealthCareProvider.DateEntered = DateTime.Now;
                    newHealthCareProvider.UserIdEntered = 0;
                    newHealthCareProvider.Username = txtHCPUserName.Text.Trim();
                    newHealthCareProvider.Password = txtHCPPassword.Text.Trim();

                    HealthCareProviderBO.Add(newHealthCareProvider);
                    HealthCareProviderBO.Save();
                    txtHCPFirstName.Text = "";
                    cbHCPActive.Checked = false;
                    string msg = string.Format("HealthCareProvider {0} created.", hcpFirstName);
                    lblMsg.Text = msg;
                    Response.Redirect("~/HealthCareProvider/HealthCareProviderList.aspx?msg=" + msg);

                }
                else
                {
                    string str = string.Format("Description field Can't be empty.");
                    lblMsg.Text = str;
                    return;

                }

            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentList.aspx");
        }
    }
}