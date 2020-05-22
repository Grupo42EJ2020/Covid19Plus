using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLaboratorio.Controllers
{
    public class ApartadoController : Controller
    {
        //
        // GET: /Apartado/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Tema()
        {
            return View();
        }
    }
}
