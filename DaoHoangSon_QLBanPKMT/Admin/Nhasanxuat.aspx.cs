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
    public partial class Nhasanxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetNhaSanXuat();
            }
        }
        private void GetNhaSanXuat()
        {
            gvNhasanxuat.DataSource = DaoHoangSon.GetData("SELECT MaNSX, TenNSX, DiaChiNSX, DienThoai FROM NHASANXUAT");
            gvNhasanxuat.DataBind();
        }

        protected void gvNhasanxuat_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvNhasanxuat.EditIndex = -1;
            GetNhaSanXuat();
        }




        protected void gvNhasanxuat_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int MaNSX = int.Parse(gvNhasanxuat.DataKeys[e.RowIndex].Value.ToString());
            string TenNSX = (gvNhasanxuat.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string DiaChiNSX = (gvNhasanxuat.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string DienThoai = (gvNhasanxuat.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            if (TenNSX == "")
            {
                Response.Write("<script>alert('Tên không được rỗng')<script>");
            }
            else
            {
                DaoHoangSon.Execute(@"UPDATE NHASANXUAT set TenNSX=N'" + TenNSX + "',DiaChiNSX=N'" + DiaChiNSX + "',DienThoai='" + DienThoai + "'WHERE MaNSX='" + MaNSX + "'");
                gvNhasanxuat.EditIndex = -1;
                GetNhaSanXuat();
            }
        }

        protected void gvNhasanxuat_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(gvNhasanxuat.Rows[chiso].Cells[0].Text);
                    DataTable dt = DaoHoangSon.GetData("Select MaPK FROM CTPHUKIEN WHERE MaNSX=" + ma + "");
                    if (dt.Rows.Count > 0)
                        lbBaoLoi.Text = "Nhà sản xuất này không thể xóa.</br> Bạn cần xóa hết tất cả sản phẩm của nhà sản xuất này trước! ";
                    else
                    {
                        string str = "DELETE from NHASANXUAT where MaNSX=" + ma;
                        DaoHoangSon.Execute(str);
                        Response.Redirect("~/Nhasanxuat.aspx");
                    }
                }
                catch
                {
                    lbBaoLoi.Text = "Thất bại!";
                }
            }
        }

        protected void gvNhasanxuat_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvNhasanxuat.EditIndex = e.NewEditIndex;
            GetNhaSanXuat();
        }
    }
}