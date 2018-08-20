using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ddlist.SelectedItem.ToString() == "All")
        {
            getAllItems();
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {     

    }
    public string st = "data source=UMAIR\\SQLEXPRESS;initial catalog=cspDB;integrated security=true";
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (!(ddlist.SelectedItem.ToString().Equals("All")))
        {
            getItemsByID();
        }
    }
    private void getAllItems()
    {
        ProductModel model = new ProductModel();
        List<Product> products = model.GetAllProducts();
        if (products != null)
        {
            foreach (Product product in products)
            {
                Panel productPanel = new Panel();
                ImageButton imageButton = new ImageButton
                {
                    ImageUrl = "~/Images/Products/" + product.Image,
                    CssClass = "productImage",
                    PostBackUrl = string.Format("~/Product.aspx?id={0}", product.Id)
                };
                Label lblName = new Label
                {
                    Text = product.Name,
                    CssClass = "productName"
                };
                Label lblPrice = new Label
                {
                    Text = "Rs. " + product.Price,
                    CssClass = "productPrice"
                };

                productPanel.Controls.Add(imageButton);
                productPanel.Controls.Add(new Literal { Text = "<br/>" });
                productPanel.Controls.Add(lblName);
                productPanel.Controls.Add(new Literal { Text = "<br/>" });
                productPanel.Controls.Add(lblPrice);

                //Add dynamic controls to static control
                pnlProducts.Controls.Add(productPanel);
            }
        }
        else
        {
            pnlProducts.Controls.Add(new Literal { Text = "No products found!" });
        }
    }
    private void getItemsByID()
    {
        try
        {
            SqlConnection sq = new SqlConnection(st);
            sq.Open();
            String query = "select Id,Name,Price,Image from Product where TypeId=" + ddlist.SelectedValue;
            SqlCommand cmd = new SqlCommand(query, sq);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Panel productPanel = new Panel();
                ImageButton imageButton = new ImageButton
                {
                    ImageUrl = "~/Images/Products/" + reader["Image"].ToString(),
                    CssClass = "productImage",
                    PostBackUrl = string.Format("~/Product.aspx?id={0}", reader["Id"].ToString())
                };
                productPanel.Controls.Add(imageButton);
                Label lblName = new Label
                {
                    Text = reader["Name"].ToString(),
                    CssClass = "productName"
                };
                productPanel.Controls.Add(new Literal { Text = "<br/>" });
                productPanel.Controls.Add(lblName);
                Label lblPrice = new Label
                {
                    Text = "Rs. " + reader["Price"].ToString(),
                    CssClass = "productPrice"
                };
                productPanel.Controls.Add(new Literal { Text = "<br/>" });
                productPanel.Controls.Add(lblPrice);
                pnlProducts.Controls.Add(productPanel);
            }
            sq.Close();
        }
        catch (Exception ex)
        {
            btnSubmit.Text = "Error : ";
        }
    }
    protected void ddlist_DataBound(object sender, EventArgs e)
    {
        ddlist.Items.Insert(0, new ListItem("All", "0"));
    }
}