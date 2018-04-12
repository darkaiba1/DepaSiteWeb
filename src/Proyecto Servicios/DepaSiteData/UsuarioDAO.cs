using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace DepaSiteData
{
    public class UsuarioDAO
    {
        public bool agregar(model.usuarios obj)
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
                comando.CommandText = "INSERT INTO usuarios (mail, username, password, rol, nombre, apeidos) VALUES(@email, @username, @pass, @rol, @nombre, @apeidos)";
                comando.Parameters.AddWithValue("@email", obj.email);
                comando.Parameters.AddWithValue("@username", obj.username);
                comando.Parameters.AddWithValue("@pass", obj.password);
                comando.Parameters.AddWithValue("@rol", obj.rol);
                comando.Parameters.AddWithValue("@nombre", obj.nombre);
                comando.Parameters.AddWithValue("@apeidos", obj.apeidos);
                comando.ExecuteNonQuery();
                return true;
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
            return false;
        }

        public bool login(model.login obj)
        {
            Console.WriteLine("hola");
            MySqlConnection cn = null;
            try
            {
                int idUsuario = 0;
                //Abrir conexion a Servidor de BD
                String cadenaConexion = "Server=127.0.0.1;Database=depasite;Uid=root;Pwd=root;";
                cn = new MySqlConnection(cadenaConexion);
                cn.Open();

                //Escribir el codigo para utilzar esta conexion para 
                //mandar instrucciones SQL al servidor de Base de Datos
                string commandString = "SELECT COUNT(*) FROM usuarios WHERE username= @user AND password= @pass";
                MySqlCommand cmd = new MySqlCommand(commandString, cn);
                cmd.Parameters.AddWithValue("@user",obj.username);
                cmd.Parameters.AddWithValue("@pass", obj.password);
                idUsuario = Convert.ToInt32(cmd.ExecuteScalar());
                if (idUsuario == 0)
                {
                    return false;
                }
                else
                {
                    return true;
                }
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
            return false;
        }
    }
}
