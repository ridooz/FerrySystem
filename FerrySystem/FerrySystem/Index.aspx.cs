using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DummyBackend.managers;
using Contract.contract;
using Contract.dto;


namespace FerrySystem
{
    public partial class Index : System.Web.UI.Page
    {
        CustomerContract manager = BridgeFactory.getInstance().getManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["username"] != null && Request["password"] != null)
            {
                Customer customer = manager.GetCustomerByLogin(Request["username"].ToString(), Request["password"].ToString());

                if (customer != null)
                {
                    Session["CustomerInfo"] = customer;
                    Response.Redirect("CustomerPage.aspx");
                }

            }
            this.FillRouteDD();
        }

        private void FillRouteDD()
        {
            foreach (Route route in manager.GetAllRoutes())
            {
                ListItem item = new ListItem();
                item.Text = route.Destination;
                item.Value = route.RouteId + "";
                routes.Items.Add(item);
            }
        }
    }
}
