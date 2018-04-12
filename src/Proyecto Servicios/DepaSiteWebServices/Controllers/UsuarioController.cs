using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DepaSiteData;
using DepaSiteData.model;
using System.Web.Http.Cors;

namespace SQLJudgeWebServices.Controllers
{
    //Configurar el Cross-Origin Requests (CORS) para este controlador, ejemplo:
    //[EnableCors(origins: "http://mywebclient.com", headers: "*", methods: "*")]

    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class UsuarioController : ApiController
    {
        
        public bool Post([FromBody]usuarios value)
        {
            UsuarioDAO dao = new UsuarioDAO();
            bool resultado = dao.agregar(value);
            return resultado;
        }
        

    }
}
