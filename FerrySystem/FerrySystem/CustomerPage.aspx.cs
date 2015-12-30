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
    public partial class CustomerPage : System.Web.UI.Page
    {
        CustomerContract manager = BridgeFactory.getInstance().getManager();
        private Customer customer;
        public string firstname;
        public string lastname;

        protected void Page_Load(object sender, EventArgs e)
        {
           customer = (Customer)Session["CustomerInfo"];
           firstname = customer.Firstname;
           lastname = customer.Lastname;

           this.fill();

           if (Request["deleteid"] != null)
           {
               delete(Convert.ToInt32(Request["deleteid"]));
           }
        }

        private void fill()
        {
            tableOut.Text = "";

            List<Reservation> reservations = new List<Reservation>();
            reservations = this.getMyReservations();

            foreach (Reservation r in reservations)
            {
                tableOut.Text += "<tr>" +
                            "   <td>" + r.Trip.DepatureTime.ToString() +"</td>" +
                             "   <td>" + r.Trip.Route.Depature.ToString() + "</td>" +
                             "   <td>" + r.Trip.Route.Destination.ToString()+ "</td>" +
                             "   <td>" + r.NumberOfPeople.ToString() + "</td>" +
                             "   <td>" + r.TotalPrice.ToString() + " kr." + "</td>" +
                            "   <td>" + "<a href=\"CustomerPage.aspx?deleteid=" + r.ReservationId + "\" class=\"btn default btn-xs red btn-confirm\"><i class=\"fa fa-trash-o\"></i> Slet</a>" + "</td>" +
                             "</tr>";
            }
        }

        private List<Reservation> getMyReservations()
        {
            List<Reservation> reservations = new List<Reservation>();
            reservations = manager.GetAllCustomerReservations(customer);

            return reservations;
        }

        private void delete(int reservationId)
        {
            manager.CancelCustomerReservation(reservationId);
        }
    }

}