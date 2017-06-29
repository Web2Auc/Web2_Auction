using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webdaugia.Models;

namespace webdaugia.Controllers
{
    public class ProductController : Controller
    {
        QLBHSEntities ctx = new QLBHSEntities();
        // GET: Product
        public ActionResult Index()
        {
            return View();
        }

        // GET: Product/Detail
        public ActionResult Detail()
        {
            //if (id.HasValue == false) 
            //{
            //    return RedirectToAction("Index", "Home");
            //}
            //using (ctx)
            //{
            //    var model = ctx.SanPhams.FirstOrDefault();
            //    return View(model);

            //}
            return View();
        }
    }
}