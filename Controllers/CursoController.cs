using System;
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
    public class CursoController : Controller
    {
        RepoCurso RepoCurso = new RepoCurso();

        public ActionResult Index()
        {

            return View();

        }
        public ActionResult Curso()
        {

            return View((RepoCurso.obtenerCurso()));

        }
        public ActionResult CursoDelete(int id)
        {
            return View(RepoCurso.obtenerCurso(id));
        }
        [HttpPost]
        public ActionResult CursoDelete(int id, FormCollection datos)
        {
            RepoCurso.eliminarCurso(id);

            return RedirectToAction("Curso");
        }

        public ActionResult CursoDetails(int id)
        {
            return View(RepoCurso.obtenerCurso(id));
        }

        public ActionResult CursoEdit(int id)
        {
            return View(RepoCurso.obtenerCurso(id));
        }

        [HttpPost]
        public ActionResult CursoEdit(int id, Curso datosCurso)
        {
            datosCurso.IdCurso = id;
            RepoCurso.actualizarCurso(datosCurso);

            return RedirectToAction("Curso");
        }
        public ActionResult CursoCreate ()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CursoCreate(Curso datos)
        {
            RepoCurso.insertarCurso(datos);
            return RedirectToAction("Curso");
        }
    }
}
