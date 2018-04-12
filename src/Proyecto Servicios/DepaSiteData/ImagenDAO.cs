using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using DepaSiteData.model;
namespace DepaSiteData
{
    public class ImagenesDAO
    {
        public model.imagenes obtener(int id)
        {
            MySqlConnection cn = null;
            try
            {
                //Abrir conexion a Servidor de BD
                String cadenaConexion = "Server=127.0.0.1;Database=depasite;Uid=root;Pwd=root;";
                cn = new MySqlConnection(cadenaConexion);
                cn.Open();

                //Escribir el codigo para utilzar esta conexion para 
                //mandar instrucciones SQL al servidor de Base de Datos
                MySqlCommand comando = cn.CreateCommand();
                comando.CommandText = "SELECT * FROM imagenes WHERE departamentos_id = @id";
                comando.Parameters.AddWithValue("@id", id);
                MySqlDataReader reader = comando.ExecuteReader();

                model.imagenes obj = null;

                if (reader.Read())
                {
                    obj = new model.imagenes();
                    obj.imagen = reader.GetString("imagen");
                    obj.descripcion = reader.GetString("descripcion");
                }

                return obj;
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
