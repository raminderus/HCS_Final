using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using DataLayer;
using Microsoft.Reporting.WebForms;

namespace HCS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NoteTypeBO noteTypeBO = new NoteTypeBO();

                this.ReportViewer1.LocalReport.ReportPath = "NoteType/NoteTypeReport.rdlc";
                this.ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", noteTypeBO.GetAll()));
                this.ReportViewer1.LocalReport.Refresh();



            }

        }
    }
}