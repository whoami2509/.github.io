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
    public partial class Thanhtoan : System.Web.UI.Page
    {
        private int MaKH;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDNKH"] == null)
                Response.Redirect("~/Dangnhap.aspx");
            if (Session["Giohang"] == null)
                Response.Redirect("~/Giohang.aspx");
            if (Session["TenDNKH"] != null)
            {
                string s = "select MaKH, HoTenKH, DiaChiKH, DienThoaiKH, EmailKH from KHACHHANG where TenDNKH = '" + Session["TenDNKH"].ToString() + " ' ";
                DataTable dt = DaoHoangSon.GetData(s);
                if (dt.Rows.Count > 0)
                {
                    MaKH = int.Parse(dt.Rows[0][0].ToString());
                    lbHoTen.Text = dt.Rows[0][1].ToString();
                    lbDiaChi.Text = dt.Rows[0][2].ToString();
                    lbDienThoai.Text = dt.Rows[0][3].ToString();
                    lbEmail.Text = dt.Rows[0][4].ToString();
                }
            }
            if (Session["Giohang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["Giohang"];
                System.Decimal tongThanhTien = 0;
                foreach (DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                    tongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                    lbTongTien.Text = tongThanhTien.ToString();
                }
                gvGiohang.DataSource = dt;
                gvGiohang.DataBind();
            }
            if (!IsPostBack)
            {
                calNgayGiao.SelectedDate = DateTime.Today;
            }
        }

        protected void btDongY_Click(object sender, EventArgs e)
        {
            int httt, htgh;
            string TenNguoiNhan, DiaChiNhan, DienThoaiNhan;

            TenNguoiNhan = txtNguoiNhan.Text;
            DiaChiNhan = txtDiaChiNhan.Text;
            DienThoaiNhan = txtDienThoaiNhan.Text;
            float tongThanhTien = float.Parse(lbTongTien.Text);
            httt = Convert.ToInt32(rblHinhThucThanhToan.SelectedItem.Value);
            htgh = Convert.ToInt32(rblHinhThucGiaoHang.SelectedItem.Value);
            try
            {
                SqlConnection con = new SqlConnection(DaoHoangSon.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;

                cmd.CommandText = @"INSERT INTO DONHANG(MaKH,NgayDH,TriGia,NgayGiao,TenNguoiNhan,DiaChiNhan,DienThoaiNhan,HTThanhToan,HTGiaoHang) Values(" + MaKH + ",@ngaydathang," + tongThanhTien + ",@ngaygiao,'" + TenNguoiNhan + "','" + DiaChiNhan + "','" + DienThoaiNhan + "'," + httt + "," + htgh + ")";
                cmd.Parameters.Add("@ngaydathang", SqlDbType.SmallDateTime);
                cmd.Parameters["@ngaydathang"].Value = DateTime.Today;
                cmd.Parameters.Add("@ngaygiao", SqlDbType.SmallDateTime);
                cmd.Parameters["@ngaygiao"].Value = calNgayGiao.SelectedDate;
                cmd.ExecuteNonQuery();
                con.Close();


                string s = "select max(SoDH) from DONHANG WHERE MaKH=" + MaKH;
                int SoDonHang = int.Parse(DaoHoangSon.GetData(s).Rows[0][0].ToString());
                DataTable dt = new DataTable();
                dt = (DataTable)Session["Giohang"];
                int MaPK, SoLuong;
                float DonGia;

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    MaPK = int.Parse(dt.Rows[i]["MaPK"].ToString());
                    SoLuong = int.Parse(dt.Rows[i]["SoLuong"].ToString());
                    DonGia = float.Parse(dt.Rows[i]["DonGia"].ToString());
                    s = "insert into CTDONHANG(SoDH, MaPK, SoLuong, DonGia) values(" + SoDonHang + "," + MaPK + "," + SoLuong + "," + DonGia + ")";
                    DaoHoangSon.Execute(s);
                }

                Session["Giohang"] = null;
                Response.Redirect("~/Xacnhandonhang.aspx");

            }
            catch
            {
                lbThongBaoLoi.Text = "Xảy ra lỗi trong quá trình thanh toán";
            }
        }
    }
}