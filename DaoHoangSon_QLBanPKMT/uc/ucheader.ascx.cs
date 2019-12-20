using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DaoHoangSon_QLBanPKMT.UC
{
    public partial class ucheader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDNKH"] != null)
            {
                aDangNhap.Visible = false;
                aDangKy.Visible = false;
                lbTenDN.Visible = true;
                lbTenDN.Text = "Xin chào: " + Session["TenDNKH"].ToString();
                lbtDangXuat.Visible = true;
            }
            else
            {
                lbTenDN.Text = "";
                lbTenDN.Visible = false;
                lbtDangXuat.Visible = false;
                aDangNhap.Visible = true;
                aDangKy.Visible = true;

            }
            if (Session["Giohang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["Giohang"];
                System.Int32 tongSL = 0;
                foreach (DataRow r in dt.Rows)
                {
                    tongSL += Convert.ToInt32(r["Soluong"]);
                    lbTongSL.Text = tongSL.ToString();
                }
            }
        }
        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenDNKH"] = null;
            Session["Giohang"] = null;
            Response.Redirect("Trangchu.aspx");
        }
    }
}