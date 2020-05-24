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
    public class CursoTemaController : Controller
    {
        RepositorioCursoTema RepoCursoTema = new RepositorioCursoTema();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult CursoTema()
        {
            return View(RepoCursoTema.obtenerCursoTema());
        }

        public ActionResult CursoTemaDelete(int idCT)
        {
            return View(RepoCursoTema.obtenerCursoTema(idCT));
        }

        [HttpPost]
        public ActionResult CursoTemaDelete(int id, FormCollection datos)
        {
            RepoCursoTema.eliminarCursoTema(id);

            return RedirectToAction("CursoTema");
        }

        public ActionResult CursoTemaDetails(int id)
        {
            return View(RepoCursoTema.obtenerCursoTema(id));
        }

        public ActionResult CursoTemaEdit(int id)
        {
            return View(RepoCursoTema.obtenerCursoTema(id));
        }


        [HttpPost]
        public ActionResult CursoTemaEdit(int id, CursoTema datosCursoTema)
        {
            datosCursoTema.IdCT = id;
            RepoCursoTema.actualizarCursoTema(datosCursoTema);

            return RedirectToAction("CursoTema");
        }

        public ActionResult CursoTemaCreate()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CursoTemaCreate(CursoTema datos)
        {
            RepoCursoTema.insertarCursoTema(datos);
            return RedirectToAction("CursoTema");
        }


    }
}
