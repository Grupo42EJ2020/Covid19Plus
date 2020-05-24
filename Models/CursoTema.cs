using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public class CursoTema
    {
        public int IdCT { get; set; }
        public int idCurso { get; set; }
        public int idTema { get; set; }
    }
}