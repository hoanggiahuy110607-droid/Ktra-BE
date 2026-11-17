using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Ktra_BE.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult Index()
        {
            return View();
        }

        // GET: Customer/MyOrders
        public ActionResult MyOrders(string status, string search)
        {
            if (string.IsNullOrEmpty(status))
            {
                status = "tat-ca";
            }

            ViewBag.SelectedStatus = status;
            ViewBag.SearchKeyword = search;

            return View();
        }
    }
}