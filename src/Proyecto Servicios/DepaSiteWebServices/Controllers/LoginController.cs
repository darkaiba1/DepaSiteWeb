using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using DepaSiteData.model;
using DepaSiteData;
namespace SQLJudgeWebServices.Controllers
{
    //Configurar el Cross-Origin Requests (CORS) para este controlador, ejemplo:
    //[EnableCors(origins: "http://mywebclient.com", headers: "*", methods: "*")]

    [EnableCors(origins: "*", headers: "*", methods: "*")]

    public class LoginController : ApiController
    {
        public bool post([FromBody] login value)
        {
            Console.WriteLine("");
            UsuarioDAO dao = new UsuarioDAO();
            bool resultado = dao.login(value);
            return resultado;
        }
    }
}
