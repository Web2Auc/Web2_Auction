using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using webdaugia.Fillter;
using webdaugia.Help;
using webdaugia.Models;

namespace webdaugia.Controllers
{

    public class AccountController : Controller
    {
        QLBHSEntities db = new QLBHSEntities();
        // GET: Account


        public ActionResult Index()
        {
            ViewBag.err = TempData["err"];
            return View();
        }


        public ActionResult Lostpassword()
        {
            return View();
        }
        [HttpPost]

        public ActionResult Index(KH tk)
        {
            var user = db.TaiKhoans.Where(c => c.f_Username.ToLower() == tk.username.ToLower()).FirstOrDefault();
            if (user != null)
            {
                ViewBag.ER = "Username already exists!";
            }
            else if (user == null)
            {
                TaiKhoan T = new TaiKhoan
                {
                    f_Username = tk.username,
                    f_Password = StringUtils.GetMD5(tk.Password),
                    f_Email = tk.email,
                    f_Name = tk.Name,
                    f_Permission = 0,
                    f_DOB = DateTime.ParseExact(tk.birthday, "d/m/yyyy", null)
                };

                db.TaiKhoans.Add(T);
                db.SaveChanges();
                Session["isLogin"] = 1;
                Session["user"] = T;
                return RedirectToAction("Index", "Home");
            }

            return View();



        }
        public ActionResult login()
        {
            return RedirectToAction("Index", "Account");
        }
        [HttpPost]
        public ActionResult login(Lg tk)
        {
            using (var ctx = new QLBHSEntities())
            {
                var user = ctx.TaiKhoans.Where(u => u.f_Username == tk.username && u.f_Password == tk.Password).FirstOrDefault();
                if (user != null)
                {
                    Session["isLogin"] = 1;
                    Session["user"] = user;
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    TempData["err"] = "The username or password is incorrect.";
                    return RedirectToAction("Index", "Account");
                }
            }


        }

        public ActionResult logout2()
        {
            CurrentContext.Destroy();
            return RedirectToAction("Index", "Home");
        }
        [CheckLogin]
        public ActionResult AProfile()
        {
            return View();
        }
        public ActionResult Detail()
        {
            return View();
        }

    }
}