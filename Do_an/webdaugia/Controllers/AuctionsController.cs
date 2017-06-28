using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webdaugia.Models;
using webdaugia.Help;
using System.IO;

namespace webdaugia.Controllers
{
    public class AuctionsController : Controller
    {
        // GET: Auctions
        public ActionResult Index()
        {
            QLBHSEntities db = new QLBHSEntities();
            var model = db.SanPhams.ToList();

            return View(model);
        }
        public ActionResult newauction()
        {
            ViewBag.n = TempData["errn"];
            QLBHSEntities db = new QLBHSEntities();
            var model = db.DanhMucs.OrderBy(c => c.TenDM).ToList();
            return View(model);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult newauction(NA sp)
        {
            if (sp.name == null)
            {
                TempData["errn"] = "Name cannot be empty";

            }
            else if (sp.Starting_price == null || sp.Price_step == null)
            {
                return RedirectToAction("newauction", "Auctions");
            }
            else
            {
                using (QLBHSEntities db = new QLBHSEntities())
                {
                    if (sp.Description == null) sp.Description = string.Empty;
                    var dm = db.DanhMucs.Where(c => c.TenDM == sp.category).FirstOrDefault();
                    SanPham spn = new SanPham();
                    spn.TenSP = sp.name;
                    spn.MoTa = sp.Description;
                    spn.Gia = int.Parse(sp.Starting_price);
                    spn.SoLuocXem = int.Parse(sp.Price_step);
                    spn.NgayNhap = DateTime.Now;
                    spn.DMID = dm.DMID;
                    spn.f_ID = CurrentContext.GetCurUser().f_ID;
                    db.SanPhams.Add(spn);
                    db.SaveChanges();
                    if (sp.h1 != null && sp.h1.ContentLength > 0 && sp.h2 != null && sp.h2.ContentLength > 0 && sp.h3 != null && sp.h3.ContentLength > 0 && sp.ht1 != null && sp.ht1.ContentLength > 0 && sp.ht2 != null && sp.ht2.ContentLength > 0 && sp.ht3 != null && sp.ht3.ContentLength > 0)
                    {
                        string spDirPath = Server.MapPath("~/Img");
                        string tagetDirPath = Path.Combine(spDirPath, spn.SPID.ToString());
                        Directory.CreateDirectory(tagetDirPath);

                        string main1name = Path.Combine(tagetDirPath, "main1.jpg");
                        sp.h1.SaveAs(main1name);

                        string main2name = Path.Combine(tagetDirPath, "main2.jpg");
                        sp.h2.SaveAs(main2name);

                        string main3name = Path.Combine(tagetDirPath, "main3.jpg");
                        sp.h3.SaveAs(main3name);


                        string thumbs1name = Path.Combine(tagetDirPath, "main1_thumbs.jpg");
                        sp.ht1.SaveAs(thumbs1name);

                        string thumbs2name = Path.Combine(tagetDirPath, "main2_thumbs.jpg");
                        sp.ht2.SaveAs(thumbs2name);

                        string thumbs3name = Path.Combine(tagetDirPath, "main3_thumbs.jpg");
                        sp.ht3.SaveAs(thumbs3name);
                    }
                }
                return RedirectToAction("Index", "Home");
            }
            return RedirectToAction("newauction", "Auctions");
        }

    }
}