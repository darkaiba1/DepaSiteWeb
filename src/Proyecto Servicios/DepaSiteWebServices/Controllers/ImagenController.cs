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
    public class ImagenController : ApiController
    {
        [EnableCors(origins: "*", headers: "*", methods: "*")]
        public imagenes Get(int id)
        {
            ImagenesDAO dao = new ImagenesDAO();
            imagenes obj = dao.obtener(id);
            Console.WriteLine("ayudaaaa");
            return obj;
        }
    }
}
