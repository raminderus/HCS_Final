using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using DataLayer;

namespace HCS_Final.HealthCareProvider
{
    public partial class HealthCareEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HealthCareProviderList.aspx");
        }

        protected void btUpdateHCP_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                HealthCareProviderBO HealthCareProviderBO = new HealthCareProviderBO();
                DataLayer.HealthCareProvider editHealthCareProvider = new DataLayer.HealthCareProvider();

                int HealthCareProviderId = Convert.ToInt32(Session["PrimaryKeyHealthCareProvider"]);

                editHealthCareProvider = HealthCareProviderBO.Get(HealthCareProviderId);
                if (editHealthCareProvider == null)
                {
                   string str = string.Format("Note Type with Id {0} not found for Update.", HealthCareProviderId);
                    lblMsg.Text = str;
                    return;
                }

                string hcpFirstName = txtHCPFirstName.Text.Trim();
                if (!string.IsNullOrEmpty(hcpFirstName))
                {
                    editHealthCareProvider.FirstName = hcpFirstName;
                    editHealthCareProvider.Active = cbHCPActive.Checked;
                    editHealthCareProvider.DateEntered = DateTime.Now;
                    editHealthCareProvider.UserIdEntered = 0;

                    HealthCareProviderBO.Edit(editHealthCareProvider);
                    HealthCareProviderBO.Save();
                    txtHCPFirstName.Text = "";
                    cbHCPActive.Checked = false;

                   
                    string msg = string.Format("HealthCareProvider {0} Updated.", hcpFirstName);

                    Response.Redirect("~/HealthCareProviderPages/HealthCareProviderList.aspx?msg=" + msg);

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