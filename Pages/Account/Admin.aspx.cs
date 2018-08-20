using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Pages_Account_Admin : System.Web.UI.Page
{
    cspDBEntities csp = new cspDBEntities();
    string DBPassword = "";
    public string st = "data source=UMAIR\\SQLEXPRESS;initial catalog=cspDB;integrated security=true";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string ID = txtBoxID.Text;
        string userName = txtBoxType.Text;
        string password = txtBoxPassword.Text;
        try
        {
            SqlConnection sq = new SqlConnection(st);
            sq.Open();
            String query = "select Password from Registration where ID = " + ID;
            SqlCommand cmd = new SqlCommand(query, sq);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                DBPassword = reader["Password"].ToString();
            }
            sq.Close();
        }
        catch (Exception ex)
        {
            Label5.Text = "Please input ID!!!";
        }
        if (ID.Equals("") || userName.Equals("") || password.Equals(""))
        {
            Label5.Text = "Please fill all credentials...";
        }
        else if (userName.Equals("admin") && DBPassword.Equals(password))
        {
            Label5.Text = "Logged in successfully!!!";
            Response.Redirect("~/Pages/Management/Management.aspx");

        }
        else if (!(userName.Equals("admin")))
        {
            Label5.Text = "Incorrect User Name!!!";
            txtBoxID.Text = "";
            txtBoxPassword.Text = "";
            txtBoxType.Text="";
        }
        else
        {
            txtBoxID.Text = "";
            txtBoxPassword.Text = "";
            txtBoxType.Text="";
            Label5.Text = "Incorrect Password!!!";
        }
    }
}