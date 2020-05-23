using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ICurso
    {
        List<Video> obtenerCurso();
        Video obtenerCurso(int IdCurso);
        void insertarCurso(ICurso datosCurso);
        void eliminarCurso(int IdCurso);
        void actualizarCurso(Video datosCurso);
    }
}