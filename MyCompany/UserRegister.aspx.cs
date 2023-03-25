using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-207B3EA\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True");
    protected void Register_Click(object sender, EventArgs e)
    {
        if(checkusername() ==true)
        {
            LabelError.Text = "Username Already Exists!";

        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Login_Data2 values ('" + TextBoxusername.Text + "','" + TextBoxpassword.Text + "')", con);

            cmd.ExecuteNonQuery();

            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly User Registered');", true);
            Response.Redirect("Login_Demo.aspx");
        }

       
    }
    private Boolean checkusername()
    {
        Boolean usernameavailable = false;
        string mycon = "Data Source=DESKTOP-207B3EA\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True";
        string myquery = "select * from Login_Data2 where username='" + TextBoxusername.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            usernameavailable = true;

        }
        con.Close();

        return usernameavailable;
    }

    protected void RedirectToLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login_Demo.aspx");
    }
    

}