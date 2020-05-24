using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ICurso
    {
<<<<<<< HEAD
        List<Curso> obtenerCurso();
=======
        List<Video> obtenerCurso();
>>>>>>> 42ad157c39de867011ff1177a6b0ef268ce3e5d7
        Curso obtenerCurso(int IdCurso);
        void insertarCurso(Curso datosCurso);
        void eliminarCurso(int IdCurso);
        void actualizarCurso(Curso datosCurso);
    }
}