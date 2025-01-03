﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace Negocio
{
    public class AccesoDatos
    {
        private string dbConexion = "server=.\\\\SQLEXPRESS; database= PROMOS_DB; integrated security= true";
        private SqlConnection conexion;
        
        private SqlCommand comando;
        
        private SqlDataReader lector;
        public SqlDataReader Lector { get { return lector; } }

        public AccesoDatos()
        {
            conexion = new SqlConnection(dbConexion);
            comando = new SqlCommand();
        }
        public void setearConsulta(string consulta)
        {
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = consulta;
        }
        public void ejecutarLectura()
        {
            comando.Connection = conexion;
            try
            {
                conexion.Open();
                lector = comando.ExecuteReader();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public void ejecutarAccion()
        {
            comando.Connection = conexion;
            try
            {
                conexion.Open();
                comando.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public void setearParametro(string parametro, object valor)
        {
            comando.Parameters.AddWithValue(parametro, valor);
        }
        public void cerrarConexion()
        {
            if(lector != null)
            {
                lector.Close();
                conexion.Close();
            }
        }
    }
}
