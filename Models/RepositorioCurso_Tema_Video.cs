using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVCLaboratorio.Utilerias;
using System.Data.SqlClient;
using System.Data;


namespace MVCLaboratorio.Models
{
    public class RepositorioCurso_Tema_Video : ICTV
    {
        public List<CTV> obtenerCTV()
        {
            DataTable dtCTV;
            dtCTV = BaseHelper.ejecutarConsulta("sp_CTV_ConsultarTodo", CommandType.StoredProcedure);
            List<CTV> lstCTV = new List<CTV>();
            foreach (DataRow item in dtCTV.Rows)
            {
                CTV CTVAux = new CTV();
                CTVAux.IdCTV = int.Parse(item["IdCTV"].ToString());
                CTVAux.IdCT = int.Parse(item["IdCT"].ToString());
                CTVAux.IdVideo = int.Parse(item["IdVideo"].ToString());
                lstCTV.Add(CTVAux);
            }
            return lstCTV;
        }


        public CTV obtenerCTV(int id)
        {
            DataTable dtCTV;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", id));

            dtCTV = BaseHelper.ejecutarConsulta("sp_CTV_ConsultarPorID", CommandType.StoredProcedure, parametros);


            CTV datosCTV = new CTV();

            if (dtCTV.Rows.Count > 0)
            {
                datosCTV.IdCTV = int.Parse(dtCTV.Rows[0]["IdCTV"].ToString());
                datosCTV.IdCT = int.Parse(dtCTV.Rows[0]["IdCT"].ToString());
                datosCTV.IdVideo = int.Parse(dtCTV.Rows[0]["IdVideo"].ToString());
                
                return datosCTV;
            }
            else
            {
                return null;
            }
        }

        public void insertarCTV(CTV datosCTV)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();        
            parametros.Add(new SqlParameter("@IdCT", datosCTV.IdCT));
            parametros.Add(new SqlParameter("@IdVideo", datosCTV.IdVideo));

            BaseHelper.ejecutarConsulta("sp_CTV_Insertar", CommandType.StoredProcedure, parametros);

        }

        public void eliminarCTV(int IdCTV)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", IdCTV));

            BaseHelper.ejecutarSentencia("sp_CTV_Eliminar", CommandType.StoredProcedure, parametros);

        }

        public void actualizarCTV(CTV datosCTV)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", datosCTV.IdCTV));
            parametros.Add(new SqlParameter("@IdCT", datosCTV.IdCT));
            parametros.Add(new SqlParameter("@IdVideo", datosCTV.IdVideo));

            BaseHelper.ejecutarConsulta("sp_CTV_Actualizar", CommandType.StoredProcedure, parametros);

        }
       
    }
}