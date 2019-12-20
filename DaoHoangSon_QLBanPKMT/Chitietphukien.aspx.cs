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
    public partial class Chitietphukien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetChiTietPhuKien();
                GetDanhGia();
            }

        }
        private void GetChiTietPhuKien()
        {
            string maPK = Request.QueryString["MaPK"];
            dtchitietpk.DataSource = DaoHoangSon.GetData("select * from CTPHUKIEN S inner join NHASANXUAT N on S.MaNSX = N.MaNSX inner join LOAIPHUKIEN C on S.MaLoaiPK = C.MaLoaiPK where MaPK = '" + maPK + "' ");
            dtchitietpk.DataBind();
        }
        private void GetDanhGia()
        {

            dtdanhgia.DataSource = DaoHoangSon.GetData("select DanhGiaKH, HoTenKH from NHANXET");
            dtdanhgia.DataBind();
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(DaoHoangSon.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"insert into NHANXET(HoTenKH,DanhGiaKH) values(@HoTenKH,@DanhGiaKH)";
                cmd.Parameters.Add("@HoTenKH", SqlDbType.NVarChar, 50);
                cmd.Parameters["@HoTenKH"].Value = txthoten.Text;
                cmd.Parameters.Add("@DanhGiaKH", SqlDbType.NVarChar, 1000);
                cmd.Parameters["@DanhGiaKH"].Value = txtdanhgia.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Thành công!')</script>");

            }
            catch
           {
                Response.Write("<script>alert('Thất bại!')</script>");

            }
        }
    }
}