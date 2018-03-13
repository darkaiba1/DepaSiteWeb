using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace DepaSiteData
{
    class DepartamentoDAO
    {
        public List<model.departamentos> obtenerTodo()
        {
            MySqlConnection cn = null;
            List<model.departamentos> lista = new List<model.departamentos>();
            try
            {
                //Abrir conexion a Servidor de BD
                String cadenaConexion = "Server=127.0.0.1;Database=depasite;Uid=root;Pwd=root;";
                cn = new MySqlConnection(cadenaConexion);
                cn.Open();

                //Escribir el codigo para utilzar esta conexion para 
                //mandar instrucciones SQL al servidor de Base de Datos
                MySqlCommand comando = cn.CreateCommand();
                comando.CommandText = "SELECT * FROM departamentos";
                MySqlDataReader reader = comando.ExecuteReader();
                model.departamentos obj = null;

                while (reader.Read())
                {
                    obj = new model.departamentos();
                    obj.Id = reader.GetInt32("id");
                    obj.direccion = reader.GetString("direccion");
                    obj.municipio = reader.GetString("municipio");
                    obj.estado = reader.GetString("estado");
                    obj.nombreContacto = reader.GetString("nombreContacto");
                    obj.costo = reader.GetInt32("costo");
                    obj.ServiciosIncluidos = reader.GetString("serviciosIncluidos");
                    obj.ServiciosPago = reader.GetString("serviciosPago");
                    obj.Amueblado = reader.GetString("amueblados");
                    obj.numeroContacto = reader.GetString("numeroContacto");
                    lista.Add(obj);
                }

                return lista;
            }
            catch (Exception ex)
            {
                //Capturar cualquier excepción.
                Console.WriteLine(ex.Message);
            }
            finally
            {
                //Siempre cerrar la conexión y liberar recursos.
                if (cn != null && cn.State == System.Data.ConnectionState.Open)
                {
                    cn.Close();
                    cn.Dispose();
                }
            }
            return null;


        }

    }
}
