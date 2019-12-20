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
    public partial class AdminDN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {

            DataTable dt = DaoHoangSon.GetData("select * from ADMIN where TenDNAdmin= '" + txtTenDN.Text + "' and MatKhauAdmin= '" + txtMatKhau.Value + "' ");
            if (dt.Rows.Count > 0)
            {
                Session["TenDNAdmin"] = txtTenDN.Text;
                Response.Redirect("Trangadmin.aspx");
            }
            else
                lbLoi.Text = "Đăng nhập thất bại.";
        }
    }
}