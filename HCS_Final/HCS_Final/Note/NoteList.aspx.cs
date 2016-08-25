using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace HCS
{
    public partial class NoteList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NoteBO notebo = new NoteBO();
            long l = Convert.ToInt64((TextBox1.Text.Trim()));
            GridView1.VirtualItemCount = notebo.Count(x => x.NoteId.Equals(l));
            GridView1.DataSource = notebo.Find(x => x.NoteId.Equals(l), 0, GridView1.PageSize)
                   .ToList();
            GridView1.DataBind();
            Button1.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NoteAdd.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("NoteEdit.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("PrimaryKeyNote", GridView1.SelectedDataKey.Value);
            Response.Redirect("~/Note/NoteEdit.aspx");
        }

        protected void btnMain(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }
    }
}