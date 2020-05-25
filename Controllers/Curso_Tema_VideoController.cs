using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using System.Data;
using MVCLaboratorio.Utilerias;
using MVCLaboratorio.Models;
using System;

namespace MVCLaboratorio.Controllers
{
    public class Curso_Tema_VideoController : Controller
    {
        RepositorioCurso_Tema_Video repoCTV = new RepositorioCurso_Tema_Video();

        public ActionResult Index()
        {
            System.Diagnostics.Debug.WriteLine("que onda pa");
            return View();
        }
        public ActionResult CTV()
        {
            return View(repoCTV.obtenerCTV());
        }

        public ActionResult CTVDelete(int id)
        {

            return View(repoCTV.obtenerCTV(id));
        }

        [HttpPost]
        public ActionResult CTVDelete(int id, FormCollection datos)
        {
            repoCTV.eliminarCTV(id);

            return RedirectToAction("CTV");
        }

        public ActionResult CTVDetails(int id)
        {
            return View(repoCTV.obtenerCTV(id));
        }

        public ActionResult CTVEdit(int id)
        {
            return View(repoCTV.obtenerCTV(id));
        }


        [HttpPost]
        public ActionResult VideoEdit(int id, CTV datosCTV)
        {
            datosCTV.IdCTV = id;
            repoCTV.actualizarCTV(datosCTV);

            return RedirectToAction("CTV");
        }

        public ActionResult CTVCreate()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CTVCreate(CTV datos)
        {
            repoCTV.insertarCTV(datos);
            return RedirectToAction("CTV");
        }

       
    }
}
