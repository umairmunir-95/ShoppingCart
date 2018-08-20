using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
public partial class Pages_Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillPage();
        try
        {
            if (Session["client"].ToString().Equals(""))
            {
                btnLogout.Visible = false;
            }
            else
            {
                btnLogout.Visible = true;
            }
        }
        catch (Exception ex)
        {
            btnLogout.Visible = false;
        }
    }
    private void FillPage()
    {
        //Get selected product data
        if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            ProductModel model = new ProductModel();
            Product product = model.GetProduct(id);
            lblTitle.Text = product.Name;
            lblDescription.Text = product.Description;
            lblPrice.Text = "Price per unit:<br/>Rs. " + product.Price;
            imgProduct.ImageUrl = "~/Images/Products/" + product.Image;
            lblItemNr.Text = product.Id.ToString();
            int[] amount = Enumerable.Range(1, 20).ToArray();
            ddlAmount.DataSource = amount;
            ddlAmount.AppendDataBoundItems = true;
            ddlAmount.DataBind();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String clientID = "";
        if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            clientID = Convert.ToString(Session["client"]);
            //   string clientId = Context.User.Identity.GetUserId();
            if (clientID == "")
            {
                lblResult.Text = "Please log in to order items";
            }
            else
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                int amount = Convert.ToInt32(ddlAmount.SelectedValue);

                Cart cart = new Cart
                {
                    Amount = amount,
                    ClientID = clientID,
                    DatePurchased = DateTime.Now,
                    IsInCart = true,
                    ProductID = id
                };
                CartModel model = new CartModel();
                lblResult.Text = model.InsertCart(cart);
                Response.Redirect("~/Pages/ShoppingCart.aspx");
            }
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["client"] = "";
        Response.Redirect("~/Index.aspx");
    }
}