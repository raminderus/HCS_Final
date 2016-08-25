using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using DataLayer;

namespace HCS
{
    public partial class NoteTypeEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNTupdate_Click(object sender, EventArgs e)
        {
            NoteTypeBO noteType = new NoteTypeBO();
            NoteType note = new NoteType();

            int NoteId = Convert.ToInt32(Session["PrimaryKeyNoteType"]);

            note = noteType.Get(NoteId);

            if (note == null)
            {
               string str = string.Format("Note with Id {0} not found.", NoteId);
                lblMsg.Text = str;
                return;
            }

            txtNTdesc.Text = note.Description;

            if (note.Active == null)
            {
                chkActive.Checked = false;
            }
            else
            {
               chkActive.Checked = (bool)note.Active;
            }
        }

        protected void btnBack(object sender, EventArgs e)
        {
            Response.Redirect("NoteTypeList.aspx");
        }
    }
}