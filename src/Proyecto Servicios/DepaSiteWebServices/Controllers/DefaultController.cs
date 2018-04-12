using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace SQLJudgeWebServices.Controllers
{
    public class DefaultController : ApiController
    {
        // GET: api/Default
        public string Get()
        {
            return "Hola Candelas desde nuestro primer servicio Web de tipo REST";
        }
    }

}
