using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DaoHoangSon_QLBanPKMT.uc
{
    public partial class ucleft : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetNhaSanXuat();
                GetLoaiPhuKien();
            }
        }
        private void GetNhaSanXuat()
        {
            gvThuonghieu.DataSource = DaoHoangSon.GetData("select MaNSX, TenNSX from NHASANXUAT");
            gvThuonghieu.DataBind();
        }
        private void GetLoaiPhuKien()
        {
            gvLoaiphukien.DataSource = DaoHoangSon.GetData("select MaLoaiPK, TenLoaiPhuKien from LOAIPHUKIEN");
            gvLoaiphukien.DataBind();
        }
    }
}