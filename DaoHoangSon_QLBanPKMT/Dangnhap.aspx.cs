using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DaoHoangSon_QLBanPKMT
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {

            DataTable dt = DaoHoangSon.GetData("select * from KHACHHANG where TenDNKH= '" + txtTenDNKH.Text + "' and MatKhauKH= '" + txtMatKhauKH.Value + "' ");
            if (dt.Rows.Count > 0)
            {
                Session["TenDNKH"] = txtTenDNKH.Text;
                Response.Redirect("Trangchu.aspx");
            }
            else
                lbLoi.Text = "Đăng nhập thất bại.";
        }
    }
}