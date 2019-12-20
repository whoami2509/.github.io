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
    public partial class ThemNSX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDNAdmin"] == null)
            {
                Response.Redirect("AdminDN.aspx");
            }
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(DaoHoangSon.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"insert into NHASANXUAT(TenNSX,DiaChiNSX,DienThoai) values(@TenNSX,@DiaChiNSX,@DienThoai)";
                cmd.Parameters.Add("@TenNSX", SqlDbType.NVarChar, 100);
                cmd.Parameters["@TenNSX"].Value = txtTenNSX.Text;
                cmd.Parameters.Add("@DiaChiNSX", SqlDbType.NVarChar, 150);
                cmd.Parameters["@DiaChiNSX"].Value = txtDiaChi.Text;
                cmd.Parameters.Add("@DienThoai", SqlDbType.NVarChar, 20);
                cmd.Parameters["@DienThoai"].Value = txtDienThoai.Text;
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