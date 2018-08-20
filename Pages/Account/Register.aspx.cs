using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Account_Register : System.Web.UI.Page
{
    cspDBEntities csp = new cspDBEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtBoxFName.Text == "")
        {
            lblName.Text = "*";
            lblUname0.Text = "";
            lblLname.Text = "";
            lblPassword.Text = "";
            lblEmail.Text = "";
            lblCity.Text = "";
            lblResult.Text = "";
            lblAddress.Text = "";
            lblPostalCode.Text="";
        }
        else if (txtBoxLName.Text == "")
        {
            lblLname.Text = "*";
            lblUname0.Text = "";
            lblName.Text = "";
            lblPassword.Text = "";
            lblEmail.Text = "";
            lblCity.Text = "";
            lblResult.Text = "";
            lblAddress.Text = "";
            lblPostalCode.Text = "";
        }
        else if (txtBoxUName.Text == "")
        {

            lblLname.Text = "";
            lblUname0.Text = "*";
            lblName.Text = "";
            lblPassword.Text = "";
            lblEmail.Text = "";
            lblCity.Text = "";
            lblResult.Text = "";
            lblAddress.Text = "";
            lblPostalCode.Text = "";
        }
        else if (txtBoxPassword.Text == "")
        {
            lblLname.Text = "";
            lblUname0.Text = "";
            lblName.Text = "";
            lblPassword.Text = "*";
            lblEmail.Text = "";
            lblCity.Text = "";
            lblResult.Text = "";
            lblAddress.Text = "";
            lblPostalCode.Text = "";
        }
        else if (txtBoxEmail.Text == "")
        {
            lblLname.Text = "";
            lblUname0.Text = "";
            lblName.Text = "";
            lblPassword.Text = "";
            lblEmail.Text = "*";
            lblCity.Text = "";
            lblResult.Text = "";
            lblAddress.Text = "";
            lblPostalCode.Text = "";
        }
        else if (ddCity.SelectedValue == "Please select your City...")
        {
            lblLname.Text = "";
            lblUname0.Text = "";
            lblName.Text = "";
            lblPassword.Text = "";
            lblEmail.Text = "";
            lblCity.Text = "*";
            lblResult.Text = "";
            lblAddress.Text = "";
            lblPostalCode.Text = "";
        }
        else if (txtBoxPostalCode.Text == "")
        {
            lblLname.Text = "";
            lblUname0.Text = "";
            lblName.Text = "";
            lblPassword.Text = "";
            lblPostalCode.Text = "*";
            lblCity.Text = "";
            lblResult.Text = "";
            lblAddress.Text = "";
        }
        else if (txtBoxAddress.Text == "")
        {
            lblLname.Text = "";
            lblUname0.Text = "";
            lblName.Text = "";
            lblPassword.Text = "";
            lblAddress.Text = "*";
            lblCity.Text = "";
            lblResult.Text = "";
            lblPostalCode.Text = "";
        }
        else
        {
            try
            {
                int pCode = int.Parse(txtBoxPostalCode.Text);
                Registration r = new Registration();
                r.F_Name = txtBoxFName.Text;
                r.L_Name = txtBoxLName.Text;
                r.U_Name = txtBoxUName.Text;
                r.Email = txtBoxEmail.Text;
                r.Password = txtBoxPassword.Text;
                r.City = ddCity.SelectedValue;
                r.Address = txtBoxAddress.Text;
                r.PostalCode = pCode;
                csp.Registration.Add(r);
                csp.SaveChanges();
                lblResult.Text = "Registered successfully!!!";
                txtBoxEmail.Text = "";
                txtBoxFName.Text = "";
                txtBoxLName.Text = "";
                txtBoxPassword.Text = "";
                txtBoxUName.Text = "";
                lblAddress.Text = "";
                lblPostalCode.Text = "";
                ddCity.SelectedValue = "Please select your City...";
                var secretID = csp.Registration.Select(en => en.ID).Max();
                lblResult.Text += " \r\n" + secretID.ToString() + " is your unique ID."+"\r\n"+"Remember it for Login.";

            }
            catch (Exception ex)
            {
                lblResult.Text = "Error : " + ex.ToString();
            }
        }
    }
}