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
    public class DepartamentoController : ApiController
    {
        public IEnumerable<departamentos> Get()
        {
            DepartamentoDAO dao = new DepartamentoDAO();
            List<departamentos> lista = dao.obtenerTodo();
            Console.WriteLine("ayudaaaa");

            return lista;
        }
        public departamentos Get(int id)
        {
            DepartamentoDAO dao = new DepartamentoDAO();
            departamentos obj = dao.obtener(id);
            Console.WriteLine("ayudaaaa");
            return obj;
        }
    }
}
