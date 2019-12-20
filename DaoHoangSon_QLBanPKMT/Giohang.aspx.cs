using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DaoHoangSon_QLBanPKMT
{
    public partial class Giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["maPK"] != null)
            {
                int MaPK = int.Parse(Request.QueryString["maPK"]);
                DataTable dt = DaoHoangSon.GetData("SELECT TenPK, DonGia from CTPHUKIEN where MaPK=" + MaPK);
                string TenPK = dt.Rows[0][0].ToString();
                float DonGia = float.Parse(dt.Rows[0][1].ToString());
                int SoLuong = 1;
                ThemVaoGioHang(MaPK, TenPK, DonGia, SoLuong);
            }
            if (Session["Giohang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["Giohang"];
                System.Decimal TongThanhTien = 0;
                foreach (DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                    TongThanhTien += Convert.ToDecimal(r["Thanhtien"]);
                    lbTongThanhTien.Text = TongThanhTien.ToString();
                }
                gvGiohang.DataSource = dt;
                gvGiohang.DataBind();
            }
        }

        public void ThemVaoGioHang(int MaPK, string TenPK, float DonGia, int SoLuong)
        {
            DataTable dt;
            if (Session["Giohang"] == null)
            {
                dt = new DataTable();
                dt.Columns.Add("MaPK");
                dt.Columns.Add("TenPK");
                dt.Columns.Add("DonGia");
                dt.Columns.Add("SoLuong");
                dt.Columns.Add("ThanhTien");
            }
            else
                dt = (DataTable)Session["Giohang"];
            int dong = SPDaCoTrongGioHang(MaPK, dt);
            if (dong != -1)
            {
                dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;
            }
            else
            {
                DataRow dr = dt.NewRow();
                dr["MaPK"] = MaPK;
                dr["TenPK"] = TenPK;
                dr["Dongia"] = DonGia;
                dr["SoLuong"] = SoLuong;
                dr["ThanhTien"] = DonGia * SoLuong;
                dt.Rows.Add(dr);
            }
            Session["Giohang"] = dt;

        }
        public static int SPDaCoTrongGioHang(int MaPK, DataTable dt)
        {
            int dong = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (int.Parse(dt.Rows[i]["MaPK"].ToString()) == MaPK)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btThanhToan_Click(object sender, EventArgs e)
        {
            if (Session["TenDNKH"] == null)
            {
                lbThongBaoLoi.Text = "Bạn chưa đăng nhập.";
                Response.Redirect("~/Dangnhap.aspx");
            }
            else
            {
                Response.Redirect("~/Thanhtoan.aspx");
            }
        }

        protected void btXoaGioHang_Click(object sender, EventArgs e)
        {
            Session["Giohang"] = null;

            Response.Redirect("~/Trangchu.aspx");


        }

        protected void btTiepTucMua_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Trangchu.aspx");
        }

        protected void btCapNhat_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            foreach (GridViewRow r in gvGiohang.Rows)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToString(gvGiohang.DataKeys[r.DataItemIndex].Value) == dr["MaPK"].ToString())
                    {
                        TextBox t = (TextBox)r.Cells[2].FindControl("txtSoLuong");
                        if (Convert.ToInt32(t.Text) <= 0)
                            dt.Rows.Remove(dr);
                        else
                            dr["SoLuong"] = t.Text;
                        break;
                    }
                }
            }
            Session["Giohang"] = dt;
            Response.Redirect("~/Giohang.aspx");

        }

        protected void gvGioHang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                try
                {
                    DataTable dt = (DataTable)Session["Giohang"];
                    dt.Rows.RemoveAt(chiso);
                    Session["Giohang"] = dt;
                    Response.Redirect("~/Giohang.aspx");
                }
                catch
                {
                    Response.Redirect("~/Giohang.aspx");
                }
            }
        }
    }
}