using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
      /*  if (!IsPostBack)
        {
            LoadRecord();
        }
      */
    }
    void clear()
    {
      
        TxtEmpName.Text = "";
        TxtEmpSname.Text = "";
        TxtDob.Text = "";
        
        DropDownListGender.SelectedValue=" ";

    }

    SqlConnection con = new SqlConnection("Data Source=DESKTOP-207B3EA\\SQLEXPRESS;Initial Catalog=MyCompany;Integrated Security=True");
    protected void Btn_InsertRecord(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Employee_Info values ('" + TxtEmpName.Text + "','" + TxtEmpSname.Text + "','" + TxtDob.Text + "','" + DropDownListState.SelectedValue + "','" + DropDownListGender.SelectedValue + "')", con);

        cmd.ExecuteNonQuery();

        con.Close();
       
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly Inserted');", true);
        clear();

    }
    //protected void Button_CancelRecord(object sender, EventArgs e)
    //{

    //    TxtEmpName.Text = "";
    //    TxtEmpSname.Text = "";
    //    TxtDob.Text = "";
    //    DropDownListState.SelectedValue = "";
    //    DropDownListGender.SelectedValue = "";
    //}
}
       /* LoadRecord();
    }
  /*  void LoadRecord()
    {
        SqlCommand cmd = new SqlCommand("select * from Employee_Info", con);
        SqlDataAdapter d= new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView.DataSource = dt;
        GridView.DataBind();
    }
   /* protected void Btn_GetData(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Employee_Info where EmpID='" + TxtEmpID.Text + "'", con);
        SqlDataReader d = cmd.ExecuteReader();
        while (d.Read())
        {
            TxtEmpName.Text = d.GetValue(1).ToString();
            TxtEmpSname.Text = d.GetValue(2).ToString();
            TxtDob.Text = d.GetValue(3).ToString();
            TxtCity.Text = d.GetValue(4).ToString();
            DropDownListGender.SelectedValue = d.GetValue(5).ToString();

        }

    }*/
  




 
