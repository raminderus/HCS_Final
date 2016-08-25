using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using DataLayer;

namespace HCS_Final.Note
{
    public partial class NoteAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                ddHealthCareProviderIdPopulate();
                ddNoteTypeIdPopulate();
                ddPatientIdPopulate();
            }

        }

        private void ddHealthCareProviderIdPopulate()
        {
            //   List<NoteType> noteTypeList = new List<NoteType>();
            HealthCareProviderBO healthCareProviderBO = new HealthCareProviderBO();
            List<SelectListItemBase> dataList = new List<SelectListItemBase>();
            dataList = healthCareProviderBO.GetAllSelect(s => new SelectListItemBase { Text = s.LastName + " " + s.FirstName, Id = s.HealthCareProviderId });
            ddHealthCareProviderId.DataSource = dataList;
            ddHealthCareProviderId.DataTextField = "Text";
            ddHealthCareProviderId.DataValueField = "Id";
            ddHealthCareProviderId.DataBind();


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

        private void ddNoteTypeIdPopulate()
        {
            //   List<NoteType> noteTypeList = new List<NoteType>();
            NoteTypeBO noteTypeBO = new NoteTypeBO();
            List<SelectListItemBase> dataList = new List<SelectListItemBase>();
            dataList = noteTypeBO.GetAllSelect(s => new SelectListItemBase { Text = s.Description, Id = s.NoteTypeId });
            ddNoteTypeId.DataSource = dataList;
            ddNoteTypeId.DataTextField = "Text";
            ddNoteTypeId.DataValueField = "Id";
            ddNoteTypeId.DataBind();


        }

        protected void btCreateNewN_Click(object sender, EventArgs e)
        {
            NoteBO NoteBO = new NoteBO();
            DataLayer.Note note = new DataLayer.Note();
            string nNote = txtNNote.Text.Trim();
            if (!string.IsNullOrEmpty(nNote))
            {

                note.HealthCareProviderId = long.Parse(ddHealthCareProviderId.SelectedValue);
                note.PatientId = long.Parse(ddPatientId.SelectedValue);
                note.Note1 = nNote;
                note.NoteTypeId = long.Parse(ddNoteTypeId.SelectedValue);
                note.Active = cbNActive.Checked;
                note.DateEntered = DateTime.Now;
                note.UserIdEntered = 0;

                NoteBO.Add(note);
                NoteBO.Save();
                txtNNote.Text = "";
                cbNActive.Checked = false;

                string msg = string.Format("Note {0} created.", nNote);

                Response.Redirect("~/Note/NoteList.aspx?msg=" + msg);
            }

        }

        protected void btBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Note/NoteList.aspx");
        }
    }
}