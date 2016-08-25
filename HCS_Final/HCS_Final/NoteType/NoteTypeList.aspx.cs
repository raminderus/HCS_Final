using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;
using BusinessLayer;

namespace HCS
{
    public partial class NoteTypeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                GridView1.AllowPaging = true;
                GridView1.PageSize = 2;
                GridView1.AllowCustomPaging = true;
              
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            NoteTypeBO notetype = new NoteTypeBO();
           // GridView1.DataSource = notetype.Find(x => x.Description.Contains(TextBox1.Text.Trim())).ToList();
            //int count;
            //count = notetype.Find(x => x.Description.Contains(TextBox1.Text.Trim())).ToList().Count();
            //GridView1.DataSource = notetype.Find(x => x.Description.Contains(TextBox1.Text.Trim())).ToList();
            //count =notetype.Find(x => x.Description.Contains(TextBox1.Text.Trim()).ToList(), GridView1.PageIndex,
            //        GridView1.PageSize).ToList().Count();
            GridView1.VirtualItemCount = notetype.Count(x => x.Description.Contains(TextBox1.Text.Trim()));
            //GridView1.DataSource =notetype.Find(x => x.Description.Contains(TextBox1.Text.Trim()), GridView1.PageIndex, GridView1.PageSize)
            //        .ToList();
            GridView1.DataSource = notetype.Find(x => x.Description.Contains(TextBox1.Text.Trim()), 0, GridView1.PageSize)
                    .ToList();
            GridView1.DataBind();
            Button1.Enabled = true;
            //Button2.Visible = true;
            //Button4.Visible = true;
        }

       

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
            GridView1.PageIndex = e.NewPageIndex;
            
            NoteTypeBO notetype = new NoteTypeBO();
            //NoteTypeBO notetype = new NoteTypeBO();
            //GridView1.DataSource = notetype.Find(x => x.Description.Contains(TextBox1.Text.Trim())).ToList();
            //GridView1.DataBind();
            //Button1.Enabled = true;

            GridView1.VirtualItemCount = notetype.Count(x => x.Description.Contains(TextBox1.Text.Trim()));
            //GridView1.DataSource = notetype.Find(x => x.Description.Contains(TextBox1.Text.Trim()), GridView1.PageIndex, GridView1.PageSize)
            //        .ToList();
            GridView1.DataSource = notetype.Find(x => x.Description.Contains(TextBox1.Text.Trim()), GridView1.PageIndex*GridView1.PageSize,GridView1.PageSize)
                    .ToList();
            GridView1.DataBind();
        }



        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("NoteTypeReport.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           //Response.Redirect("NoteTypeAdd.aspx");
            Response.Redirect("~/NoteType/NoteTypeAdd.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("PrimaryKeyNoteType", GridView1.SelectedDataKey.Value);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("NoteTypeEdit.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void btnMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }
    }
}