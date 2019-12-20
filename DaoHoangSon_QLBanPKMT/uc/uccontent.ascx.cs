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
    public partial class uccontent : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetHangMoi();
            }
        }
        private void GetHangMoi()
        {
            dtmoi.DataSource = DaoHoangSon.GetData("Select top 12 MaPK, TenPK, HinhMinhHoa, DonGia from CTPHUKIEN order by NgayCapNhat desc");
            dtmoi.DataBind();
        }
    }
}