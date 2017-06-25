using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webdaugia.Models;

namespace webdaugia.Controllers
{
    public class ProductsController : Controller
    {
        // GET: Products
        public ActionResult Index()
        {
            return View();
        }

        // GET: Products
        public ActionResult List_Price()
        {
            using (var ctx = new QLBHSEntities())
            {
                var list = ctx.SanPhams.OrderByDescending(p => p.Gia).Take(5).ToList();
                return PartialView("ListPartial", list);
            }
            
        }

        // GET: Products
        public ActionResult List_Auction()
        {
            using (var ctx = new QLBHSEntities())
            {
                var list = ctx.SanPhams.OrderByDescending(p => p.SoLuocDauGia).Take(5).ToList();
                return PartialView("ListPartial", list);
            }

        }


        // GET: Products
        public ActionResult List_DatetoExpire()
        {
            using (var ctx = new QLBHSEntities())
            {
                var list = ctx.SanPhams.OrderByDescending(p => p.NgayNhap).Take(5).ToList();
                return PartialView("ListPartial", list);
            }

        }
    }
}