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
    public class EmpleadoController : Controller
    {
        RepositorioEmpleado repoEmp = new RepositorioEmpleado();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Empleado()
        {
            return View(repoEmp.obtenerEmpleado());
        }

        public ActionResult EmpleadoDelete(int id)
        {
            return View(repoEmp.obtenerEmpleado(id));
        }

        [HttpPost]
        public ActionResult EmpleadoDelete(int id, FormCollection datos)
        {
            repoEmp.eliminarEmpleado(id);

            return RedirectToAction("Empleado");
        }

        public ActionResult EmpleadoDetails(int id)
        {
            return View(repoEmp.obtenerEmpleado(id));
        }

        public ActionResult EmpleadoEdit(int id)
        {
            return View(repoEmp.obtenerEmpleado(id));
        }


        [HttpPost]
        public ActionResult EmpleadoEdit(int id, Empleado datosEmpleado)
        {
            datosEmpleado.IdEmpleado = id;
            repoEmp.actualizarEmpleado(datosEmpleado);

            return RedirectToAction("Empleado");
        }

        public ActionResult EmpleadoCreate()
        {
            return View();
        }

        [HttpPost]
        public ActionResult EmpleadoCreate(Empleado datos)
        {
            repoEmp.insertarEmpleado(datos);
            return RedirectToAction("Empleado");
        }
    }
}
