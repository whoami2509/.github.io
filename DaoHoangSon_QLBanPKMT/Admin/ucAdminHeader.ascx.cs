using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DaoHoangSon_QLBanPKMT.Admin
{
    public partial class ucAdminHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDNAdmin"] != null)
            {
                aDangNhap.Visible = false;
                lbTenDN.Visible = true;
                lbTenDN.Text = "Xin chào: " + Session["TenDNAdmin"].ToString();
                lbtDangXuat.Visible = true;
            }
            else
            {
                lbTenDN.Text = "";
                lbTenDN.Visible = false;
                lbtDangXuat.Visible = false;
                aDangNhap.Visible = true;

            }
            
        }
        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenDNKH"] = null;
            Session["Giohang"] = null;
            Response.Redirect("Trangadmin.aspx");
        }
    }
}