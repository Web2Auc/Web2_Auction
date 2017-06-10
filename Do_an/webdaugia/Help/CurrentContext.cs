using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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