using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;

public partial class Pages_Management_ManageProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetImage();
        }
    }
    private void GetImage()
    {
        try
        {
            string[] images = Directory.GetFiles(Server.MapPath("~/Images/Products/"));
            ArrayList imageList = new ArrayList();
            foreach (string image in images)
            {
                string imageName = image.Substring(image.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                imageList.Add(imageName);
            }
            ddImage.DataSource = imageList;
            ddImage.AppendDataBoundItems = true;
            ddImage.DataBind();
        }
        catch (Exception ex)
        {
            lblResult.Text = "Error : " + ex.ToString();
        }
    }
    cspDBEntities csp = new cspDBEntities();
    void AddProducts()
    {
        try
        {
            Product p = new Product();
            p.Name = txtBoxName.Text;
            p.Price = Convert.ToInt32(txtBoxPrice.Text);
            p.TypeId = Convert.ToInt32(ddType.SelectedValue);
            p.Description = txtDescription.Text;
            p.Image = ddImage.SelectedValue;
            csp.Products.Add(p);
            csp.SaveChanges();
            lblResult.Text = txtBoxName.Text + " added successfully!!!";
        }
        catch (Exception ex)
        {
            lblResult.Text = "Error : " + ex.ToString();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        AddProducts();
    }
}