using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using  DataLayer;

namespace HCS_Final.PatientType
{
    public partial class PatientEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btUpdateP_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                PatientBO PatientBO = new PatientBO();
                DataLayer.Patient editPatient = new Patient();

                int PatientId = Convert.ToInt32(Session["PrimaryKeyPatient"]);

                editPatient = PatientBO.Get(PatientId);
                if (editPatient == null)
                {
                    string str = string.Format("Patient Type with Id {0} not found for Update.", PatientId);
                    return;
                }
                string PFirstName = txtPFirstName.Text.Trim();
                if (!string.IsNullOrEmpty(PFirstName))
                {
                    editPatient.FirstName = PFirstName;
                    editPatient.Active = cbPActive.Checked;
                    editPatient.DateEntered = DateTime.Now;
                    editPatient.UserIdEntered = 0;

                    PatientBO.Edit(editPatient);
                    PatientBO.Save();
                    txtPFirstName.Text = "";
                    cbPActive.Checked = false;
                    string msg = string.Format("Patient {0} Updated.", PFirstName);

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

        protected void btBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PatientType/PatientList.aspx");
        }
    }
}