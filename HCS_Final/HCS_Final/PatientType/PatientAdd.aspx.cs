using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using DataLayer;

namespace HCS_Final.PatientType
{
    public partial class PatientAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCreateNewP_Click(object sender, EventArgs e)
        {
            if (ModelState.IsValid)
            {
                PatientBO PatientBO = new PatientBO();
                Patient newPatient = new Patient();
                string hcpFirstName = txtPFirstName.Text.Trim();
                if (!string.IsNullOrEmpty(hcpFirstName))
                {
                    newPatient.FirstName = hcpFirstName;
                    newPatient.LastName = txtPLastName.Text.Trim();
                    newPatient.HealthCardNo = txtPHealthCardNo.Text.Trim();
                    newPatient.Address1 = txtPAddress1.Text.Trim();
                    newPatient.Address2 = txtPAddress2.Text.Trim();
                    newPatient.HomePhone = txtPHomePhone.Text.Trim();
                    newPatient.CellPhone = txtPCellPhone.Text.Trim();
                    newPatient.DateOfBirth = DateTime.Parse(txtPDateOfBirth.Text.Trim());
                    newPatient.Active = cbPActive.Checked;
                    newPatient.DateEntered = DateTime.Now;
                    newPatient.UserIdEntered = 0;

                    PatientBO.Add(newPatient);
                    PatientBO.Save();
                    txtPFirstName.Text = "";
                    cbPActive.Checked = false;

                    // lblMasterStatus
                    //this.Master.ActionStatusMessage = 
                    string msg = string.Format("Patient {0} created.", hcpFirstName);

                    Response.Redirect("~/PatientType/PatientList.aspx?msg=" + msg);

                }
                else
                {
                    string str = string.Format("First Name field Can't be empty.");
                    lblMsg.Text = str;
                    return;
                    
                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PatientType/PatientList.aspx");
        }
    }
}