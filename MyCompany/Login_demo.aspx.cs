using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection( 
        "Data Source=DESKTOP-207B3EA\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True ");
        SqlCommand cmd = new SqlCommand("select * from Login_Data2 where username=@username and password=@password", con);
        cmd.Parameters.AddWithValue("@username", TextBoxusername.Text);
        cmd.Parameters.AddWithValue("password", TextBoxpassword.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (dt.Rows.Count > 0)
        {
            Session["id"] = TextBoxusername.Text;
            Response.Redirect("Default.aspx");
            Session.RemoveAll();
        }
        else
        {
            ErrorLabel.Text = "You have entered an invalid username or password";
            ErrorLabel.ForeColor = System.Drawing.Color.Red;

        }
      
    }

    //protected void Register_Click(object sender, EventArgs e)
    //{
    //    string us =RequiredFieldValidatorForUsername.Text;
    //    string pw =RequiredFieldValidatorForPassword.Text;
    //     if (us =="" || pw=="")
    //    {
    //        Response.Redirect("UserRegister.aspx");
    //    }
        
           
    //}
}