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
    public partial class Suapk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDNAdmin"] == null)
            {
                Response.Redirect("AdminDN.aspx");
            }
        }

        private void getPhukien()
        {
            string maPK = Request.QueryString["Ma"];
            DataTable dt = new DataTable();
            dt = DaoHoangSon.GetData("select MaPK,TenPK,DonViTinh,DonGia,MoTa,HinhMinhHoa,MaLoaiPK,MaNSX,NgayCapNhat,SoLuongBan,SoLanXem from CTPHUKIEN where MaPK = '" + maPK + "' ");
            if (dt.Rows.Count > 0)
            {
                txtTenPK.Text = dt.Rows[0][1].ToString();
                txtDonViTinh.Text = dt.Rows[0][2].ToString();
                txtDonGia.Text = dt.Rows[0][3].ToString();
                txtMoTa2.InnerText = dt.Rows[0][4].ToString();
                
                txtMaLoaiPK.Text = dt.Rows[0][6].ToString();
                txtMaNSX.Text = dt.Rows[0][7].ToString();
                
                txtSoLuong.Text = dt.Rows[0][9].ToString();
                txtSoLanXem.Text = dt.Rows[0][10].ToString();
            }
        }



        protected void bthien_Click(object sender, EventArgs e)
        {
            getPhukien();
        }

        protected void btLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string TenPK = txtTenPK.Text;
                string DonViTinh = txtDonViTinh.Text;
                string DonGia = txtDonGia.Text;
                string MoTa = txtMoTa2.InnerText;
                string MaLoaiPK = txtMaLoaiPK.Text;
                string MaNSX = txtMaNSX.Text;
                string SoLuongBan = txtSoLuong.Text;
                string SoLanXem = txtSoLanXem.Text;
                int maPK = int.Parse(Request.QueryString["Ma"].ToString());
                DaoHoangSon.Execute(@"update SACH set TenPK='" + TenPK + "',DonViTinh='" + DonViTinh + "',DonGia='" + DonGia + "',MoTa='" + MoTa + "',HinhMinhHoa='" + fileHinh.FileName + "',MaLoaiPK='" + MaLoaiPK + "',MaNXB='" + MaNSX + "',NgayCapNhat='" + cldNgay.SelectedDate.ToString() + "',SoLuongBan='" + SoLuongBan + "',SoLanXem='" + SoLanXem + "' where MaPK=" + maPK);
                Response.Write("<script>alert('Thành công!!!')</script>");

            }
            catch
            {
                Response.Write("<script>alert('Thất bại!!')</script>");
            }
        }
    }
}