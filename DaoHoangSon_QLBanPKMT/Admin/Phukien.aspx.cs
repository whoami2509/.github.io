using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DaoHoangSon_QLBanPKMT.Admin
{
    public partial class Phukien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["TenDNAdmin"] == null)
            {
                Response.Redirect("AdminDN.aspx");
            }
            if (!IsPostBack)
            {
                getPk();
            }
        }

        private void getPk()
        {
            gvPk.DataSource = DaoHoangSon.GetData("select MaPK,TenPK,DonViTinh,DonGia,NgayCapNhat,SoLuongBan,SoLanXem from CTPHUKIEN");
            gvPk.DataBind();
        }

        protected void gvPk_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int maPk = int.Parse(gvPk.Rows[chiso].Cells[0].Text);
                    DaoHoangSon.Execute("delete from CTPHUKIEN where MaPK=" + maPk);
                    Response.Redirect("Phukien.aspx");

                }
                catch
                {
                    Response.Write("<script>alert('Xóa thất bại!!!')</script>");
                }
            }
        }

        protected void gvPk_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPk.PageIndex = e.NewPageIndex;
            getPk();
            gvPk.DataBind();
        }
    }
}