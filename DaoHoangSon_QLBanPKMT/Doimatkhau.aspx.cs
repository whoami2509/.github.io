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
    public partial class Doimatkhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDoimatKhau_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = DaoHoangSon.GetData("Select TenDNKH From KHACHHANG where TenDNKH='" + txtTenDN.Text + "' and MatKhauKH='" + txtMatKhauCu.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    DaoHoangSon.GetData("UPDATE KHACHHANG Set MatKhauKH='" + txtMatKhauMoi.Text + "' WHERE TenDNKH ='" + txtTenDN.Text + "'");
                    lbThongBaoLoi.Text = "Đổi mật khẩu thành công";
                    Response.Redirect("Trangchu.aspx");
                }
                else
                {
                    lbThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu cũ không hợp lệ!";
                }
            }
            catch
            {
                lbThongBaoLoi.Text = "Thất bại";
            }
        }
    }
}