using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Contact : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!IsPostBack)
        {
            LoadRecord();
        }
       
      
    }
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-207B3EA\\SQLEXPRESS;Initial Catalog=MyCompany;Integrated Security=True");
    protected void Btn_SearchRecord(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from Employee_Info where EmpID='" + TxtSearchRecord.Text + "'", con);
        SqlDataAdapter d = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView.DataSource = dt;
        GridView.DataBind();

    }
    void LoadRecord()
    {
        SqlCommand cmd = new SqlCommand("select * from Employee_Info", con);
        SqlDataAdapter d = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView.DataSource = dt;
        GridView.DataBind();
    }
    protected void GridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView.EditIndex = e.NewEditIndex;
        LoadRecord();

    }
    protected void GridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = Convert.ToInt32(GridView.DataKeys[e.RowIndex].Value.ToString());
        string name = ((TextBox)GridView.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string sname = ((TextBox)GridView.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string dob = ((TextBox)GridView.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string city = ((TextBox)GridView.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string sex = ((TextBox)GridView.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        if (name == "" || sname == "")
        {
            con.Close();
            
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update Employee_Info set EmpFname= '" + name + "',EmpLname= '" + sname + "',EmpDOB= '" + dob + "',City= '" + city + "',Sex= '" + sex + "' where EmpID= '" + id + "'", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data Updated Successfully')</script>");
                GridView.EditIndex = -1;
                LoadRecord();
            }

        }



    }




    protected void GridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView.EditIndex = -1;
        LoadRecord();
    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string item = e.Row.Cells[0].Text;
            foreach (Button button in e.Row.Cells[5].Controls.OfType<Button>())
            {
                if (button.CommandName == "Delete")
                {
                    button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                }
            }
        } 
    }


    protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView.DataKeys[e.RowIndex].Value.ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Employee_Info where EmpID= '" + id + "'", con);
        int t = cmd.ExecuteNonQuery();
        
        if (t > 0)
        {
            Response.Write("<script>confirm('Data Deleted Successfully')</script>");
            GridView.EditIndex = -1;
            LoadRecord();
        }
    }
   

}

