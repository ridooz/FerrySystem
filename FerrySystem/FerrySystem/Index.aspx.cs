using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DummyBackend.managers;
using Contract.contract;


namespace FerrySystem
{
    public partial class Index : System.Web.UI.Page
    {
        CustomerContract manager = BridgeFactory.getInstance().getManager();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


    }
}