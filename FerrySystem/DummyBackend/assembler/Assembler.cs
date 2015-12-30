using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Contract.dto;
using Contract.eto;

namespace DummyBackend.assembler
{
    public class Assembler 
    {
        public List<Customer> CustomerList { get; set; }
        public List<Ferry> FerryList { set; get; }
        public List<Dock> DockList { get; set; }
        public List<Vehicle> VehicleList { get; set; }
        public List<Reservation> ReservationList { get; set; }
        public List<Route> RouteList { get; set; }
        public List<Trip> TripList { get; set; }

        public Assembler()
        {
            CustomerList = AssembleCustomers();
            FerryList = AssembleFerries();
            DockList = AssembleDocks();
            VehicleList = AssembleVehicles();
            ReservationList = AssembleReservations();
            RouteList = AssembleRoutes();
            TripList = AssembleTrips();
        }

        private List<Customer> AssembleCustomers()
        {
            var customers = new List<Customer>();
            customers.Add(new Customer { CustomerId = 1, Firstname = "Ahmed", Lastname = "Sadiq", Mail = "test@test.dk", Password = "test", Phone = "12345678", Street = "Boulevardgaden" , HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" });
            customers.Add(new Customer { CustomerId = 2, Firstname = "Mikail", Lastname = "Tolga", Mail = "mikail@test.dk", Password = "test", Phone = "12345678", Street = "Boulevardgaden", HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" });
            customers.Add(new Customer { CustomerId = 3, Firstname = "Ridvan", Lastname = "Gurel", Mail = "ridvan@test.dk", Password = "test", Phone = "12345678", Street = "Boulevardgaden", HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" });
            return customers;
        }

        private List<Ferry> AssembleFerries()
        {
            var ferries = new List<Ferry>();
            ferries.Add(new Ferry { FerryId = 1, Dock = null, Municipality = "Ishøj Kommune", FerryName = "Isabella", PassengerCapacity = 200,VehicleCapacity = 250, FerrySize = "Large"});
            ferries.Add(new Ferry { FerryId = 2, Dock = null, Municipality = "Ishøj Kommune", FerryName = "Monica", PassengerCapacity = 200, VehicleCapacity = 25, FerrySize = "Large" });
            ferries.Add(new Ferry { FerryId = 3, Dock = null, Municipality = "Ishøj Kommune", FerryName = "America", PassengerCapacity = 200, VehicleCapacity = 19, FerrySize = "Large"});
            ferries.Add(new Ferry { FerryId = 4, Dock = null, Municipality = "Ishøj Kommune", FerryName = "Mærsk VI", PassengerCapacity = 200, VehicleCapacity = 0, FerrySize = "Large"});
            ferries.Add(new Ferry { FerryId = 5, Dock = null, Municipality = "Ishøj Kommune", FerryName = "Turan", PassengerCapacity = 200, VehicleCapacity = 5000, FerrySize = "Large"});
            return ferries;
        }

        private List<Dock> AssembleDocks()
        {
            var docks = new List<Dock>();
            docks.Add(new Dock { DockId = 1, FerryCapacity = 20, DockName = "Ishøj Havn" });
            docks.Add(new Dock { DockId = 2, FerryCapacity = 20, DockName = "Vallensbæk Havn" });
            docks.Add(new Dock { DockId = 3, FerryCapacity = 20, DockName = "LængereUdePåLandet Havn" });
            docks.Add(new Dock { DockId = 4, FerryCapacity = 20, DockName = "Langbortistan Havn" });
            docks.Add(new Dock { DockId = 5, FerryCapacity = 20, DockName = "Kharaci Havn" });
            return docks;
        }

        private List<Vehicle> AssembleVehicles()
        {
            var vehicles = new List<Vehicle>();
            vehicles.Add(new Vehicle { VehicleId = 1, VehicleSize = 1, VehicleType = "Personbil", VehiclePrice = 200.85 });
            vehicles.Add(new Vehicle { VehicleId = 2, VehicleSize = 2, VehicleType = "Varevogn/Mindre lastbil", VehiclePrice = 253.1 });
            vehicles.Add(new Vehicle { VehicleId = 3, VehicleSize = 3, VehicleType = "Lastbil", VehiclePrice = 1025.5});
            vehicles.Add(new Vehicle { VehicleId = 4, VehicleSize = 4, VehicleType = "Maskine",  VehiclePrice = 2500.8});
            vehicles.Add(new Vehicle { VehicleId = 5, VehicleSize = 5, VehicleType = "Større maskine", VehiclePrice = 5236.8 });
            return vehicles;
        }

        private List<Reservation> AssembleReservations()
        {

            Customer customer1 = new Customer { CustomerId = 1, Firstname = "Ahmed", Lastname = "Sadiq", Mail = "test@test.dk", Password = "test", Phone = "12345678", Street = "Boulevardgaden", HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" };
            Customer customer2 = new Customer{CustomerId = 2, Firstname = "Mikail", Lastname = "Tolga", Mail = "mikail@test.dk", Password = "test", Phone = "12345678", Street = "Boulevardgaden", HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" };
            Customer customer3 = new Customer{CustomerId = 3, Firstname = "Ridvan", Lastname = "Gurel", Mail = "ridvan@test.dk", Password = "test", Phone = "12345678", Street = "Boulevardgaden", HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" };

            Route route1 = new Route { RouteId = 1, Depature = "Lyngby", Duration = 90, Destination = "Ishøj" };
            Route route2 = new Route { RouteId = 2, Depature = "Ishøj", Duration = 90, Destination = "Lyngby" };
            Route route3 = new Route { RouteId = 3, Depature = "Langbortistan", Duration = 90, Destination = "Malmø" };

            Ferry ferry1 = new Ferry { FerryId = 1, Dock = null, Municipality = "Ishøj Kommune", FerryName = "Isabella", PassengerCapacity = 200, VehicleCapacity = 250, FerrySize = "Large" };
            Ferry ferry2 = new Ferry { FerryId = 2, Dock = null, Municipality = "Ishøj Kommune", FerryName = "Monica", PassengerCapacity = 200, VehicleCapacity = 25, FerrySize = "Large" };
            Ferry ferry3 = new Ferry { FerryId = 3, Dock = null, Municipality = "Ishøj Kommune", FerryName = "America", PassengerCapacity = 200, VehicleCapacity = 19, FerrySize = "Large" };

            Trip trip1 = new Trip { TripId = 1, DepatureTime = new DateTime(2015, 04, 12, 21, 45, 00), Route =route1 , Ferry = ferry1, TripPrice = 100 };
            Trip trip2 = new Trip { TripId = 2, DepatureTime = new DateTime(2015, 11, 12, 12, 55, 00), Route = route2, Ferry = ferry2, TripPrice = 120 };
            Trip trip3 = new Trip { TripId = 3, DepatureTime = new DateTime(2015, 07, 12, 14, 30, 00), Route = route3, Ferry = ferry3, TripPrice = 100 };

            Vehicle vehicle1 = new Vehicle { VehicleId = 1, VehicleSize = 1, VehicleType = "Personbil", VehiclePrice = 200.85 };
            Vehicle vehicle2 = new Vehicle { VehicleId = 2, VehicleSize = 2, VehicleType = "Varevogn/Mindre lastbil", VehiclePrice = 253.1 };
            Vehicle vehicle3 = new Vehicle { VehicleId = 3, VehicleSize = 3, VehicleType = "Lastbil", VehiclePrice = 1025.5 };
            
            var reservations = new List<Reservation>();
            reservations.Add(new Reservation { ReservationId = 1, Customer = customer1, NumberOfPeople = 1, TotalPrice = 500, Trip = trip1, Vehicle = vehicle1 });
            reservations.Add(new Reservation { ReservationId = 2, Customer = customer2, NumberOfPeople = 2, TotalPrice = 500, Trip = trip2, Vehicle = vehicle2 });
            reservations.Add(new Reservation { ReservationId = 3, Customer = customer3, NumberOfPeople = 3, TotalPrice = 500, Trip = trip3, Vehicle = vehicle3 });
            return reservations;
        }

        private List<Route> AssembleRoutes()
        {
            var routes = new List<Route>();
            routes.Add(new Route { RouteId = 1, Depature = "Lyngby", Duration = 90, Destination = "Ishøj" });
            routes.Add(new Route { RouteId = 2, Depature = "Ishøj", Duration = 90, Destination = "Lyngby" });
            routes.Add(new Route { RouteId = 3, Depature = "Langbortistan", Duration = 90, Destination = "Malmø" });
            routes.Add(new Route { RouteId = 4, Depature = "Lyngby", Duration = 90, Destination = "Lübeck" });
            routes.Add(new Route { RouteId = 5, Depature = "Ishøj", Duration = 90, Destination = "Langbortistan" });
            return routes;
        }

        private List<Trip> AssembleTrips()
        {
            Route route1 = new Route { RouteId = 1, Depature = "Lyngby", Duration = 90, Destination = "Ishøj" };
            Route route2 = new Route { RouteId = 2, Depature = "Ishøj", Duration = 90, Destination = "Lyngby" };
            Route route3 = new Route { RouteId = 3, Depature = "Langbortistan", Duration = 90, Destination = "Malmø" };

            Ferry ferry1 = new Ferry { FerryId = 1, Dock = null, Municipality = "Ishøj Kommune", FerryName = "Isabella", PassengerCapacity = 200, VehicleCapacity = 250, FerrySize = "Large" };
            Ferry ferry2 = new Ferry { FerryId = 2, Dock = null, Municipality = "Ishøj Kommune", FerryName = "Monica", PassengerCapacity = 200, VehicleCapacity = 25, FerrySize = "Large" };
            Ferry ferry3 = new Ferry { FerryId = 3, Dock = null, Municipality = "Ishøj Kommune", FerryName = "America", PassengerCapacity = 200, VehicleCapacity = 19, FerrySize = "Large" };

            var trips = new List<Trip>();
            trips.Add(new Trip { TripId = 1, DepatureTime = new DateTime(2015, 04, 12, 21, 45, 00), Route = route1, Ferry = ferry1, TripPrice = 100 });
            trips.Add(new Trip { TripId = 2, DepatureTime = new DateTime(2015, 11, 12, 12, 55, 00), Route = route2, Ferry = ferry2, TripPrice = 120 });
            trips.Add(new Trip { TripId = 3, DepatureTime = new DateTime(2015, 07, 12, 14, 30, 00), Route = route3, Ferry = ferry3, TripPrice = 100 });
            return trips;
        }


    }
}