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
    public partial class Dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btDangKy_Click(object sender, EventArgs e)
        {
            try
            {
                string strl = @"select * from KHACHHANG where TenDNKH = '" + txtTenDNKH.Text + "' ";
                if (DaoHoangSon.GetData(strl).Rows.Count > 0)
                {
                    lbThongBaoLoi.Text = "Tên đăng nhập đã tồn tại.";
                    txtTenDNKH.Focus();
                }
                else
                {
                    SqlConnection con = new SqlConnection(DaoHoangSon.strCon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    cmd.CommandText = @"insert into KHACHHANG(HoTenKH,DiaChiKH,DienThoaiKH,EmailKH,TenDNKH,MatKhauKH,NgaySinhKH,GioiTinhKH) values(@HoTenKH,@DiaChiKH,@DienThoaiKH,@EmailKH,@TenDNKH,@MatKhauKH,@NgaySinhKH,@GioiTinhKH)";
                    cmd.Parameters.Add("@HoTenKH", SqlDbType.NVarChar, 50);
                    cmd.Parameters["@HoTenKH"].Value = txtHoTenKH.Text;
                    cmd.Parameters.Add("@DiaChiKH", SqlDbType.NVarChar, 50);
                    cmd.Parameters["@DiaChiKH"].Value = txtDiaChiKH.Text;
                    cmd.Parameters.Add("@DienThoaiKH", SqlDbType.VarChar, 10);
                    cmd.Parameters["@DienThoaiKH"].Value = txtDienThoaiKH.Text;
                    cmd.Parameters.Add("@EmailKH", SqlDbType.VarChar, 50);
                    cmd.Parameters["@EmailKH"].Value = txtEmailKH.Text;
                    cmd.Parameters.Add("@TenDNKH", SqlDbType.VarChar, 15);
                    cmd.Parameters["@TenDNKH"].Value = txtTenDNKH.Text;
                    cmd.Parameters.Add("@MatKhauKH", SqlDbType.VarChar, 15);
                    cmd.Parameters["@MatKhauKH"].Value = txtMatKhauKH.Text;
                    cmd.Parameters.Add("@NgaySinhKH", SqlDbType.SmallDateTime);
                    cmd.Parameters["@NgaySinhKH"].Value = DateTime.Parse(ddlThangSinh.Text + "/" + ddlNgaySinh.Text + "/" + txtNamSinh.Text);
                    cmd.Parameters.Add("@GioiTinhKH", SqlDbType.Bit);
                    cmd.Parameters["@GioiTinhKH"].Value = Convert.ToInt16(rblGioitinh.SelectedItem.Value);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/Dangnhap.aspx");
                }
            }
            catch
            {
                lbThongBaoLoi.Text = "Thất bại";
            }
        }
    }
}