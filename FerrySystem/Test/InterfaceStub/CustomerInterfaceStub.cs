using Contract.contract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test.InterfaceStub
{
    class CustomerInterfaceStub : CustomerContract
    {
        public List<Contract.dto.Trip> GetAllTrips()
        {
            throw new NotImplementedException();
        }

        public List<Contract.dto.Reservation> GetAllCustomerReservations(Contract.dto.Customer customer)
        {
            throw new NotImplementedException();
        }

        public bool CreateCustomer(Contract.dto.Customer customer)
        {
            throw new NotImplementedException();
        }

        public Contract.dto.Customer GetCustomerByLogin(string username, string password)
        {
            throw new NotImplementedException();
        }

        public Contract.dto.Reservation CreateCustomerReservation(Contract.dto.Trip trip, Contract.dto.Customer customer, double totalPrice, int numberOfPeople, Contract.dto.Vehicle vehicle)
        {
            throw new NotImplementedException();
        }

        public bool CancelCustomerReservation(int reservationId)
        {
            throw new NotImplementedException();
        }

        public List<Contract.dto.Route> GetAllRoutes()
        {
            throw new NotImplementedException();
        }

        public List<Contract.dto.Vehicle> GetAllVehicles()
        {
            throw new NotImplementedException();
        }
    }
}
