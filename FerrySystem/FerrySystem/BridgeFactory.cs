using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DummyBackend.managers;
using Contract.contract;
//using Backend; når den rigtige backend er klar

namespace FerrySystem
{
    public class BridgeFactory
    {
        private static BridgeFactory instance = null; // lazy singleton
        private CustomerContract manager;

        private BridgeFactory() // det er her switchen sker mellem dummy backend og den rigtige backend. 
        {
            manager = new DummyCustomerManager(); // dummy backend
            // manager = new CustomerManager(); // real backend
        }

        public static BridgeFactory getInstance()
        { 
            if (instance == null) instance = new BridgeFactory();
            return instance;
        }

        public CustomerContract getManager()
        {
            return manager;
        }
    }
} 