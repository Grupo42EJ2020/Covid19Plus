using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface IEmpleado
    {
        List<Empleado> obtenerEmpleado();
        Tema obtenerEmpleado(int IdEmpleado);
        void insertarEmpleado(Empleado datosEmpleado);
        void eliminarEmpleado(int IdEmpleado);
        void actualizarEmpleado(Empleado datosEmpleado);
    }
}