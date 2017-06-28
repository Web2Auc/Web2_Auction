using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using webdaugia.Models;

namespace webdaugia.Help
{
    public class CurrentContext
    {
        public static bool IsLogged()
        {
            var flag = HttpContext.Current.Session["isLogin"];
            if (flag == null || (int)flag == 0)
            {
                return false;
            }
            return true;
        }

        public static TaiKhoan GetCurUser()
        {
            return (TaiKhoan)HttpContext.Current.Session["user"];
        }

        public static List<DSYeuthich> GetWishList()
        {
            return (List<DSYeuthich>)HttpContext.Current.Session["DSYT"];
        }
        public static bool IsWishList(int spid)
        {
            var list = CurrentContext.GetWishList().ToList();
            if (CurrentContext.GetWishList() == null)
            {
                return false;
            }
            else
            {
                foreach (var spyt in list)
                {
                    if (spid == spyt.SPID)
                    {
                        return true;

                    }

                }
            }

            return false;

        }
        public static string Geterr()
        {
            return (string)HttpContext.Current.Session["er"];
        }
        public static void Destroy()
        {
            HttpContext.Current.Session["isLogin"] = 0;
            HttpContext.Current.Session["user"] = null;
        }
    }
}