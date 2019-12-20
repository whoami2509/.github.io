using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DaoHoangSon_QLBanPKMT
{
    public partial class Phukientheoloai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetPKTheoLoai();
            }
        }
        private void GetPKTheoLoai()
        {
            string maLoaiPK = Request.QueryString["maLoaiPK"];
            dtloai.DataSource = DaoHoangSon.GetData("select * from CTPHUKIEN where MaLoaiPK = '" + maLoaiPK + "' ");
            dtloai.DataBind();
        }
    }
}