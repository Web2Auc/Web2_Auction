using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webdaugia.Models;
using webdaugia.Help;
using webdaugia.Fillter;

namespace webdaugia.Controllers
{
    public class PagesController : Controller
    {
        // GET: Featured
        QLBHSEntities db = new QLBHSEntities();
        public ActionResult Featured()
        {
            return View();
        }
        public ActionResult Featured_index()
        {
            return View();
        }

        public ActionResult Featured_Luxury()
        {
            return View();
        }
        [CheckLogin]
        public ActionResult Wishlist()
        {
            int ipkh = CurrentContext.GetCurUser().f_ID;
            var db = new QLBHSEntities();
            var ds = db.DSYeuthiches.Where(c => c.f_ID == ipkh).ToList();
            var model = new List<SanPham>();
            foreach (var a in ds)
            {
                model.Add(db.SanPhams.Where(c => c.SPID == a.SPID).FirstOrDefault());
            }
            return View(model);
        }
        [HttpPost]
        [CheckLogin]
        public ActionResult Wishlist(int spid)
        {

            int ipkh = CurrentContext.GetCurUser().f_ID;
            DSYeuthich ds = new DSYeuthich
            {
                f_ID = ipkh,
                SPID = spid

            };

            db.DSYeuthiches.Add(ds);
            db.SaveChanges();
            Session["DSYT"] = db.DSYeuthiches.Where(c => c.f_ID == ipkh).ToList();
            return RedirectToAction("Wishlist", "Pages");
        }

        public ActionResult ItemFull()
        {
            return View();
        }

        public ActionResult ItemRight()
        {
            return View();
        }

        public ActionResult PagePull()
        {
            return View();
        }

        public ActionResult PageLeft()
        {
            return View();
        }

        public ActionResult InnerPage()
        {
            return View();
        }

        public ActionResult Compare()
        {
            return View();
        }

        public ActionResult BlogPull()
        {
            return View();
        }

        public ActionResult BlogRight()
        {
            return View();
        }

        public ActionResult BlogLeft()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult Shortcode()
        {
            return View();
        }
    }
}