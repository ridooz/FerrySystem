using Contract.contract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FerrySystem
{
    public partial class CreateCustomer : System.Web.UI.Page
    {
        CustomerContract manager = BridgeFactory.getInstance().getManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            native.Items.Add(new ListItem("JA", "1"));
            native.Items.Add(new ListItem("NEJ", "0"));
        }

        protected void CreateCustomerButton_Click(object sender, EventArgs e)
        {

            Contract.dto.Customer customer = new Contract.dto.Customer();
            customer.Firstname = Fornavn.Value;
            customer.Lastname = Efternavn.Value;
            customer.Mail = Email.Value;
            customer.Password = Password.Value;
            customer.Street = Adresse.Value;
            customer.HouseNumber = Husnr.Value;
            customer.City = By.Value;
            int eben;
            if (Int32.TryParse(Postnr.Value, out eben))
            {
                customer.PostalCode = eben;
            }
            customer.Phone = Telefonnr.Value;
            if (native.Value == "1")
            {
                customer.AmountOfFreeRides = 5;
            }
            else
            {
                customer.AmountOfFreeRides = 0;
            }


            Boolean status = manager.CreateCustomer(customer);
            if (status)
            {
                Session["CustomerInfo"] = customer;
                Response.Redirect("SearchTravel.aspx?command=createReservation", true);
            }
            else
            {
                Response.Redirect("index.aspx?command=exception&errorMsg=" + "Du kunne ikke oprettes som kunde i systemet.", true);
            }

        }
    }
}