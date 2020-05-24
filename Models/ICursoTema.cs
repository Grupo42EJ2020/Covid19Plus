using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ICursoTema
    {
        List<CursoTema> obtenerCursoTema();
        CursoTema obtenerCursoTema(int idCT);
        void insertarCursoTema(CursoTema datosCursoTema);
        void eliminarCursoTema(int idCT);
        void actualizarCursoTema(CursoTema datosCursoTema);
    }
}