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
    public partial class NoteTypeAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            NoteTypeBO notetype = new NoteTypeBO();
           NoteType note = new NoteType();
            note.Description = (txtDesc.Text.Trim());
          //  note.NoteTypeId = Convert.ToInt64((txtNoteId.Text.Trim()));
            note.Active = chkActive.Checked;
            note.DateEntered =  DateTime.Now; 
            notetype.Add(note);
            notetype.Save();
            txtDesc.Text = "";
            chkActive.Checked = false;

            string msg = string.Format("Note Type {0} created", txtDesc);
            lblMsg.Text = msg;
            //Response.Redirect("NoteList.aspx");


        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("NoteTypeList.aspx");
        }
    }

}