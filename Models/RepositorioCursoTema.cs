using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MVCLaboratorio.Utilerias;
using System.Data.SqlClient;

namespace MVCLaboratorio.Models
{
    public class RepositorioCursoTema : ICursoTema
    {
        public List<CursoTema> obtenerCursoTema()
        {
            DataTable dtCursoTema;
            dtCursoTema = BaseHelper.ejecutarConsulta("sp_Curso_Tema_ConsultarTodo", CommandType.StoredProcedure);

            List<CursoTema> lstCursoTema = new List<CursoTema>();


            foreach (DataRow item in dtCursoTema.Rows)
            {
                CursoTema CursoTemaAux = new CursoTema();

                CursoTemaAux.IdCT = int.Parse(item["idCT"].ToString());
                CursoTemaAux.idCurso = int.Parse(item["idCurso"].ToString());
                CursoTemaAux.idTema = int.Parse(item["idTema"].ToString());

                lstCursoTema.Add(CursoTemaAux);
            }

            return lstCursoTema;
        }

        public CursoTema obtenerCursoTema(int idCT)
        {
            DataTable dtCursoTema;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCT", idCT));

            dtCursoTema = BaseHelper.ejecutarConsulta("sp_Curso_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);


            CursoTema datosCursoTema = new CursoTema();

            if (dtCursoTema.Rows.Count > 0)
            {
                datosCursoTema.IdCT = int.Parse(dtCursoTema.Rows[0]["idCT"].ToString());
                datosCursoTema.idCurso = int.Parse(dtCursoTema.Rows[0]["idCurso"].ToString());
                datosCursoTema.idTema = int.Parse(dtCursoTema.Rows[0]["idTema"].ToString());
           

                return datosCursoTema;
            }
            else
            {
                return null;
            }
        }

        public void insertarCursoTema(CursoTema datosCursoTema)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCurso", datosCursoTema.idCurso));
            parametros.Add(new SqlParameter("@idTema", datosCursoTema.idTema));

            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Insertar", CommandType.StoredProcedure, parametros);

        }

        public void eliminarCursoTema(int idCT)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", idCT));

            BaseHelper.ejecutarSentencia("sp_Curso_Tema_Eliminar", CommandType.StoredProcedure, parametros);

        }


        

        public void actualizarCursoTema(CursoTema datosCursoTema)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCurso", datosCursoTema.idCurso));
            parametros.Add(new SqlParameter("@idTema", datosCursoTema.idTema));

            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Actualizar", CommandType.StoredProcedure, parametros);

        }
    }
}