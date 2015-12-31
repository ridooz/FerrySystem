using Contract.contract;
using Contract.dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FerrySystem
{
    public partial class SearchTravel : System.Web.UI.Page
    {
        CustomerContract manager = BridgeFactory.getInstance().getManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["command"] != null)
            {
                if (Request["command"].ToString() == "reserveTrip")
                {
                    this.FillReserveTripDDs();
                }
                if (Request["command"].ToString() == "createReservation")
                {
                    this.CreateReservation();
                } 
                if (Request["command"].ToString() == "reservationCreated")
                {
                    // gør intet i code-behind. ASPX siden klarer denne
                }
            }
            if (Request["routes"] != null)
            {
                this.FillTripList();
            }
        }

        private void ShowReservationSuccesInfo()
        {
            
        }

        private void CreateReservation()
        {

            if (Session["selectedVehicle"] == null || Session["travelers"] == null || Session["tripId"] == null || Session["CustomerInfo"] == null)
            {
                Response.Redirect("index.aspx?command=exception&errorMsg=" + "Du er ikke logget ind, eller session er udløbet. Prøv igen.", true);
            }

            Vehicle selectedVehicle = (Vehicle)Session["selectedVehicle"];
            int travelers = Convert.ToInt32(Session["travelers"].ToString());
            Trip trip = GetTripById(Convert.ToInt32(Session["tripId"].ToString()));
            Customer customer = (Customer)Session["CustomerInfo"];

            double totalprice = (selectedVehicle.VehicleId != 0 ? selectedVehicle.VehiclePrice : 0) + (travelers * trip.TripPrice);
            if (customer.AmountOfFreeRides > 0) {
                totalprice = 0;
                customer.AmountOfFreeRides -= 1;
                //manager.UpdateCustomer(customer);
            }

            Reservation reservationCreated = manager.CreateCustomerReservation(trip, customer, totalprice, travelers, selectedVehicle);
            if (reservationCreated.ReservationId != 0)
            {
                Response.Redirect("SearchTravel.aspx?command=reservationCreated&reservationId=" + reservationCreated.ReservationId);
            }
            else
            {
                Response.Redirect("index.aspx?command=exception&errorMsg=" + "Den ønskede reservation kunne ikke oprettes.", true);
            }
        }

        private Trip GetTripById(int tripId)
        {
            foreach(Trip trip in manager.GetAllTrips()){
                if (trip.TripId == tripId)
                {
                    return trip;
                }
            }
            Response.Redirect("index.aspx?command=exception&errorMsg=" + "Den ønskede rejse kunne ikke findes.", true);
            return null;
        }

        private void FillReserveTripDDs()
        {
            for (int i = 1; i < 10; i++)
            {
                travelers.Items.Add(new ListItem(i+(i == 1 ? " person":" personer"), i+""));
            }

            vehicle.Items.Add(new ListItem("Intet køretøj", 0 + "")); //default
            foreach (Vehicle v in manager.GetAllVehicles())
            {
                vehicle.Items.Add(new ListItem(v.VehicleType, v.VehicleId+""));
            }

        }

        private void FillTripList()
        {
            //DateTime travelDate = Convert.ToDateTime(Request["date"].ToString());
            DateTime travelDate = new DateTime(2009, 8, 1, 0, 0, 0); // til test
            string routeid = Request["routes"].ToString();
            foreach (Trip trip in manager.GetAllTrips())
            {
                if (trip.Route.RouteId == Convert.ToInt32(routeid))
                {
                    if (DateTime.Compare(travelDate, trip.DepatureTime) < 0)
                    {
                        tableOut.Text += "<tr>" +
                                    "   <td>" + trip.Route.Depature + "</td>" +
                                    "   <td>" + trip.Route.Destination + "</td>" +
                                    "   <td>" + trip.DepatureTime + "</td>" +
                                    "   <td>" + trip.Route.Duration + " min.</td>" +
                                    "   <td>" + trip.TripPrice + " kr</td>" +
                                    "   <td>" + "<a href=\"SearchTravel.aspx?command=reserveTrip&tripId=" + trip.TripId + "\" class=\"btn default btn-xs green\"><i class=\"fa fa-unlock-alt\"></i> Bestil rejse </a>" + "</td>" +
                                    "</tr>";
                    }
                }
            }
        }

        protected void ContinueButton_Click(object sender, EventArgs e)
        {
            Vehicle selectedVehicle = new Vehicle();
            selectedVehicle.VehicleId = 0;
            if (vehicle.Value != "0")
            {
                selectedVehicle = GetVehicleById(Convert.ToInt32(vehicle.Value));
            }

            Session["selectedVehicle"] = selectedVehicle;
            Session["travelers"] = travelers.Value;
            Session["tripId"] = Request["tripId"].ToString();

            if (Session["CustomerInfo"] == null)
            {
                Response.Redirect("CreateCustomer.aspx", true);
            }
            else
            {
                this.CreateReservation();
            }

        }

        private Vehicle GetVehicleById(int vehicleId)
        {
            foreach (Vehicle vehicle in manager.GetAllVehicles())
            {
                if (vehicle.VehicleId == vehicleId)
                {
                    return vehicle;
                }
            }
            Response.Redirect("index.aspx?command=exception&errorMsg=" + "Det ønskede køretøj kunne ikke findes.", true);
            return null;
        }


    }
}

