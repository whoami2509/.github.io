<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAdminHeader.ascx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.ucAdminHeader" %>
<link href="../css/Style.css" rel="stylesheet" />  
    <nav>
        <div id="subnav">
            <ul>
                <li><a href="Trangadmin.aspx"><img src="../hinh/icons8-home-30.png" /></a></li>
                <li><asp:Label ID="lbTenDN" runat="server" ></asp:Label><a id="aDangNhap"  runat="server" href="~/Admin/AdminDN.aspx"><img src="../hinh/icons8-account-30.png" /></a></li>
                    <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton>
            </ul>
            
           <div> 
    </nav>