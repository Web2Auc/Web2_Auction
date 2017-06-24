using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webdaugia.Fillter;
using webdaugia.Models;

namespace webdaugia.Controllers
{
    [CheckAdmin]
    public class AdminController : Controller
    {

        public ActionResult Index()
        {
            QLBHSEntities db = new QLBHSEntities();
            var model = db.DanhMucs.ToList();
            return View(model);
        }
        public ActionResult Addcat()
        {
            return View();
        }
        [HttpPost]

        public ActionResult Addcat(String name)
        {
            using (QLBHSEntities db = new QLBHSEntities())
            {
                DanhMuc dm = new DanhMuc();
                dm.TenDM = name;
                db.DanhMucs.Add(dm);
                db.SaveChanges();
            }
            return View();
        }

        public ActionResult deletecat(int? id)
        {
            if (id.HasValue == false)
            {
                return RedirectToAction("Index", "Admin");
            }
            ViewBag.id = id;
            return View();
        }
        [HttpPost]

        public ActionResult deletecat(int IDdelete)
        {
            using (QLBHSEntities db = new QLBHSEntities())
            {
                DanhMuc dm = db.DanhMucs.Where(c => c.DMID == IDdelete).FirstOrDefault();
                db.DanhMucs.Remove(dm);
                db.SaveChanges();
            }

            return RedirectToAction("Index", "Admin");
        }

        public ActionResult editcat(int? id)
        {
            if (id.HasValue == false)
            {
                return RedirectToAction("Index", "Admin");
            }
            QLBHSEntities db = new QLBHSEntities();
            var model = db.DanhMucs.Where(c => c.DMID == id).FirstOrDefault();
            return View(model);
        }
        [HttpPost]
        public ActionResult editcat(DanhMuc dm)
        {
            using (QLBHSEntities db = new QLBHSEntities())
            {
                var model = db.DanhMucs.Where(c => c.DMID == dm.DMID).FirstOrDefault();
                model.TenDM = dm.TenDM;
                db.SaveChanges();
            }

            return RedirectToAction("Index", "Admin");
        }


        public ActionResult users()
        {
            QLBHSEntities db = new QLBHSEntities();
            var model = db.TaiKhoans.ToList();
            return View(model);
        }
        public ActionResult deleteuser(int? id)
        {
            if (id.HasValue == false)
            {
                return RedirectToAction("users", "Admin");
            }
            ViewBag.id = id;
            return View();
        }
        [HttpPost]
        public ActionResult deleteuser(int IDdelete)
        {
            using (QLBHSEntities db = new QLBHSEntities())
            {
                TaiKhoan dm = db.TaiKhoans.Where(c => c.f_ID == IDdelete).FirstOrDefault();
                db.TaiKhoans.Remove(dm);
                db.SaveChanges();
            }
            return RedirectToAction("users", "Admin");
        }
        public ActionResult usersA()
        {
            QLBHSEntities db = new QLBHSEntities();
            var model = db.TaiKhoans.Where(c => c.f_Permission == 1).ToList();
            return View(model);
        }
        [HttpPost]
        public ActionResult usersAagr(int id)
        {
            using (QLBHSEntities db = new QLBHSEntities())
            {
                TaiKhoan user = db.TaiKhoans.Where(c => c.f_ID == id).FirstOrDefault();
                user.f_Permission = 3;
                db.SaveChanges();

            }
            return RedirectToAction("usersA", "Admin");
        }

    }
}