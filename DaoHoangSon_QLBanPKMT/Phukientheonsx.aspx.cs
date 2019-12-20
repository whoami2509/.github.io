using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DaoHoangSon_QLBanPKMT
{
    public partial class Phukientheonsx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetPKTheoNSX();
            }
        }
        private void GetPKTheoNSX()
        {
            string maNSX = Request.QueryString["maNSX"];
            dtthuonghieu.DataSource = DaoHoangSon.GetData("select * from CTPHUKIEN where MaNSX = '" + maNSX + "' ");
            dtthuonghieu.DataBind();
        }
    }
}