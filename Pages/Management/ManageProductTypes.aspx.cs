using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Management_ManageProductTypes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    cspDBEntities csp = new cspDBEntities();
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            ProductType pt = new ProductType();
            pt.Name = txtBoxName.Text;
            csp.ProductTypes.Add(pt);
            csp.SaveChanges();
            lblError.Text = txtBoxName.Text + " added successfully!!!";
        }
        catch (Exception ex)
        {
            lblError.Text = "Error : " + ex.ToString();
        }
    }
}