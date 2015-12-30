using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Contract.contract;
using Contract.dto;
using Contract.eto;
using DummyBackend.assembler;

namespace DummyBackend.managers
{
    public class DummyCustomerManager : CustomerContract
    {
        Assembler db;

        public DummyCustomerManager(){
            db = new Assembler();
        }

        public DummyCustomerManager getManager()
        {
            return new DummyCustomerManager();
        }

        public List<Trip> GetAllTrips()
        {
            return db.TripList;
        }

        public List<Reservation> GetAllCustomerReservations(Customer customer)
        {
            return db.ReservationList.Where(x => x.Customer.CustomerId == customer.CustomerId).ToList();
        }

        public bool CreateCustomer(Customer customer)
        {
            db.CustomerList.Add(customer);
            return true;
        }

        public Customer GetCustomerByLogin(string username, string password)
        {
            List<Customer> customers = new List<Customer>(); 
            customers = db.CustomerList;

            var found = customers.Find(c => c.Mail == username && c.Password == password);
            if (found != null)
            {
                return found;
            }
            else
            {
                throw new CustomerNotFoundException();
            }
                       
        }

        public Reservation CreateCustomerReservation(Trip trip, Customer customer, double totalPrice, int numberOfPeople, Vehicle vehicle)
        {
            var reservation = new Reservation {ReservationId = (db.ReservationList.Count+1),  Customer = customer, Trip = trip, Vehicle = vehicle, TotalPrice = totalPrice, NumberOfPeople = numberOfPeople };
            db.ReservationList.Add(reservation);
            return reservation;
        }

        public bool CancelCustomerReservation(int reservationId)
        {
            return db.ReservationList.Remove(db.ReservationList.Where(r => r.ReservationId == reservationId).First());
        }
    }
}