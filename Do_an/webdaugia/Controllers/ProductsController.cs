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
                var list = ctx.SanPhams.OrderByDescending(p => p.SoLuocXem).Take(5).ToList();
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
        // GET: Product/Detail
        public ActionResult Detail(int? id)
        {
            if (id.HasValue == false)
            {
                return RedirectToAction("Index", "Home");
            }
            using (var ctx = new QLBHSEntities())
            {
                var model = ctx.SanPhams.FirstOrDefault();
                return View(model);

            }
            //return View();
        }

        // GET: Product/Detail
        public ActionResult SearchName(string s)
        {
            using (var ctx = new QLBHSEntities())
            {
                return View(ctx.SanPhams.Where(p => p.TenSP.Contains(s) || s == null).ToList());
            }
        }
    }
}