using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ICTV
    {
        List<CTV> obtenerCTV();
        CTV obtenerCTV(int IdCTV);
        void insertarCTV(CTV datosCTV);
        void eliminarCTV(int idCTV);
        void actualizarCTV(CTV datosCTV);
    }
}
