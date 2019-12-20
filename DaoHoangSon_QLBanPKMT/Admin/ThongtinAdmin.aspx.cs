using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DaoHoangSon_QLBanPKMT.Admin
{
    public partial class ThongtinAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDNAdmin"] == null)
            {
                Response.Redirect("AdminDN.aspx");
            }
            if (!IsPostBack)
            {
                GetAdmin();
            }
        }
        private void GetAdmin()
        {
            gvThongtin.DataSource = DaoHoangSon.GetData("select * from ADMIN");
            gvThongtin.DataBind();
        }

    }
}