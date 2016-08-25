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
    public partial class NoteEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btUpdateN_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                NoteBO NoteBO = new NoteBO();
                DataLayer.Note editNote = new DataLayer.Note();

                int NoteId = Convert.ToInt32(Session["PrimaryKeyNote"]);

                editNote = NoteBO.Get(NoteId);
                if (editNote == null)
                {
                   string str = string.Format("Note Type with Id {0} not found for Update.", NoteId);
                    lblMsg.Text = str;
                    return;
                }
                string ntNote = txtNNote.Text.Trim();
                if (!string.IsNullOrEmpty(ntNote))
                {
                    editNote.Note1 = ntNote;
                    editNote.Active = cbNActive.Checked;
                    editNote.DateEntered = DateTime.Now;
                    editNote.UserIdEntered = 0;

                    NoteBO.Edit(editNote);
                    NoteBO.Save();
                    txtNNote.Text = "";
                    cbNActive.Checked = false;

                   
                    string msg = string.Format("Note {0} Updated.", ntNote);

                    Response.Redirect("~/Note/NoteList.aspx?msg=" + msg);

                }
                else
                {
                    string msg = string.Format("Description field Can't be empty.");
                    lblMsg.Text = msg;
                    return;
                    // Response.Redirect("~/Note/NoteList.aspx");
                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Note/NoteList.aspx");
        }
    }
}