using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using Microsoft.Reporting.WebForms;

namespace HCS
{
    public partial class HealthCareProviderReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HealthCareProviderBO healthCare = new HealthCareProviderBO();
            if (!IsPostBack)
            {
                this.ReportViewer1.LocalReport.ReportPath = "HealthCareProvider/HealthCareProvider.rdlc";
                this.ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", healthCare.GetAll()));
                this.ReportViewer1.LocalReport.Refresh();
            }
        }
    }
}