<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucheader.ascx.cs" Inherits="DaoHoangSon_QLBanPKMT.UC.ucheader" %>

<link href="../css/Style.css" rel="stylesheet" />
    <nav>
        <div id="subnav">
            <ul>
                <li><a href="../Trangchu.aspx"><img src="../hinh/icons8-home-30.png" /></a></li>
                <li><asp:Label ID="lbTenDN" runat="server" ></asp:Label><a id="aDangNhap"  runat="server" href="~/Dangnhap.aspx"><img src="../hinh/icons8-account-30.png" /></a></li>
                <li><a ID="aDangKy" runat="server" href="~/Dangky.aspx"><img src="../hinh/icons8-add-user-male-30.png" /></a>
                    <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton></li>
                <li><a href="../Giohang.aspx"><img src="../hinh/icons8-buying-30.png" />(<asp:Label ID="lbTongSL" runat="server">Trống</asp:Label>)</a></li>

            </ul>
            
           <div>
                <input  type="text" name="tsearch" placeholder="Nhập thứ cần tìm ..." id="tsearch">
                <input type="submit" value="Tìm" title="Tìm">
            </div>
        </div> 
    </nav>
