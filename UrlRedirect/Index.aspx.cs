using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrlRedirect
{
    public partial class Index : System.Web.UI.Page
    {
        /// <summary>
        /// 跳转目标url
        /// </summary>
        protected string targetUrl = "";
        protected void Page_Load(object sender, EventArgs e){

            targetUrl = System.Configuration.ConfigurationManager.AppSettings[Request.Url.DnsSafeHost];
            if (string.IsNullOrEmpty(targetUrl)) {
                Response.Write("<h1>未匹配到跳转目标 "+ Request.Url.DnsSafeHost+ "</h1>");
                Response.End();
            }
        }

    

    }
}