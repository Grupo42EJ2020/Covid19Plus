using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using System.Data;
using MVCLaboratorio.Utilerias;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class Curso_Tema_VideoController : Controller
    {
        RepositorioCurso_Tema_Video repoCTV = new RepositorioCurso_Tema_Video();

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult CTV()
        {
            return View(repoCTV.obtenerCTV());
        }

        public ActionResult CTVDelete(int IdCTV)
        {
            return View(repoCTV.obtenerCTV(IdCTV));
        }

        [HttpPost]
        public ActionResult CTVDelete(int IdCTV, FormCollection datos)
        {
            repoCTV.eliminarCTV(IdCTV);

            return RedirectToAction("CTV");
        }

        public ActionResult CTVDetails(int IdCTV)
        {
            return View(repoCTV.obtenerCTV(IdCTV));
        }

        public ActionResult CTVEdit(int IdCTV)
        {
            return View(repoCTV.obtenerCTV(IdCTV));
        }


        [HttpPost]
        public ActionResult VideoEdit(int IdCTV, CTV datosCTV)
        {
            datosCTV.IdCTV = IdCTV;
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
