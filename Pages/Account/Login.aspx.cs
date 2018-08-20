using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Pages_Account_Login : System.Web.UI.Page
{
    cspDBEntities csp = new cspDBEntities();
    string DBuserName = "";
    string DBPassword = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string st = "data source=UMAIR\\SQLEXPRESS;initial catalog=cspDB;integrated security=true";
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string ID = txtBOxID.Text;
        string userName = txtBoxUName.Text;
        string password = txtBoxPassword.Text;
        try
        {
            SqlConnection sq = new SqlConnection(st);
            sq.Open();
            String query = "select U_Name,Password from Registration where ID = " + ID;
            SqlCommand cmd = new SqlCommand(query, sq);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                DBuserName = reader["U_Name"].ToString();
                DBPassword = reader["Password"].ToString();
            }
            sq.Close();
        }
        catch (Exception ex)
        {
            lblStatus.Text = "Please input ID!!!";
        }
        if (ID.Equals("") || userName.Equals("") || password.Equals(""))
        {
            lblStatus.Text = "Please fill all credentials...";
        }
        else if (DBuserName.Equals(userName) && DBPassword.Equals(password))
        {
            lblStatus.Text = "Logged in successfully!!!";
            Session["client"] = txtBOxID.Text;
            Session["id"] = txtBOxID.Text;
            Response.Redirect("~/Index.aspx");
            //LinkButton link5 = (LinkButton)Master.FindControl("LinkButton5");
            //link5.Text = "Logout";
            //LinkButton linkButton = this.Master.FindControl("LinkButton5") as LinkButton;
            //linkButton.Text = "Logout";
            
        }
        else if (!(DBuserName.Equals(userName)))
        {
            lblStatus.Text = "Incorrect User Name!!!";
            txtBoxUName.Text = "";
            txtBoxPassword.Text = "";
        }
        else
        {
            txtBoxUName.Text = "";
            txtBoxPassword.Text = "";
            lblStatus.Text = "Incorrect Password!!!";
        }
    }
}