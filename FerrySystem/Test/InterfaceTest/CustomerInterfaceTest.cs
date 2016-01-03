using Contract.contract;
using Contract.dto;
using Contract.eto;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Test.InterfaceStub;

namespace Test.InterfaceTest
{
    [TestClass]
    public class CustomerInterfaceTest
    {

        private CustomerContract getCustomerContract()
        {
            return new CustomerInterfaceStub();
        }

        [TestMethod]
        public void CreateReservationSucessTest()
        {
            Vehicle vehicle = new Vehicle { VehicleId = 1, VehicleSize = 1, VehicleType = "Personbil", VehiclePrice = 200.85 };
            Customer customer = new Customer { CustomerId = 1, Firstname = "Ahmed", Lastname = "Sadiq", Mail = "test@test.dk", Password = "test", Phone = "12345678", Street = "Boulevardgaden", HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" };
            Route route1 = new Route { RouteId = 1, Depature = "Lyngby", Duration = 90, Destination = "Ishøj" };
            Ferry ferry1 = new Ferry { FerryId = 1, Dock = null, Municipality = "Ishøj Kommune", FerryName = "Isabella", PassengerCapacity = 200, VehicleCapacity = 250, FerrySize = "Large" };
            Trip trip = new Trip { TripId = 1, DepatureTime = new DateTime(2015, 04, 12, 21, 45, 00), Route = route1, Ferry = ferry1, TripPrice = 100 };
            int travelers = 5;
            double totalprice = (vehicle.VehicleId != 0 ? vehicle.VehiclePrice : 0) + (travelers * trip.TripPrice);

            if (customer.AmountOfFreeRides > 0)
            {
                totalprice = 0;
                customer.AmountOfFreeRides -= 1;
            }

            try
            {
                Reservation reservationCreated = getCustomerContract().CreateCustomerReservation(trip, customer, totalprice, travelers, vehicle);
                Assert.IsTrue(reservationCreated.ReservationId > 0);
            }
            catch (TripNotAvailableException tex)
            {
                Assert.IsTrue(true);
            }

        }

        [TestMethod]
        public void CreateCustomerSuccesTest()
        {
            Customer customer = new Customer { CustomerId = 1, Firstname = "Ahmed", Lastname = "Sadiq", Mail = "test@test.dk", Password = "test", Phone = "12345678", Street = "Boulevardgaden", HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" };
            Boolean status = getCustomerContract().CreateCustomer(customer);
            Assert.IsTrue(status);
        }

        [TestMethod]
        public void CustomerLoginSuccesTest()
        {
            Customer customer = new Customer { CustomerId = 1, Firstname = "Ahmed", Lastname = "Sadiq", Mail = "test@test.dk", Password = "test", Phone = "12345678", Street = "Boulevardgaden", HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" };

            try
            {
                Customer customerByLogin = getCustomerContract().GetCustomerByLogin(customer.Mail, customer.Password);
                Assert.IsNotNull(customerByLogin);
            }
            catch (CustomerLoginException cex)
            {
                Assert.Fail();
            }

        }

        [TestMethod]
        public void CustomerLoginFailTest()
        {
            Customer customer = new Customer { CustomerId = 1, Firstname = "Ahmed", Lastname = "Sadiq", Mail = "notexsist@notexsist.dk", Password = "notexsists", Phone = "12345678", Street = "Boulevardgaden", HouseNumber = "48A", PostalCode = 2635, City = "Ishøj" };

            try
            {
                Customer customerByLogin = getCustomerContract().GetCustomerByLogin(customer.Mail, customer.Password);
                Assert.IsNull(customerByLogin);
            }
            catch (CustomerNotFoundException cex)
            {
                Assert.IsTrue(true);
            }


        }


    }
}

