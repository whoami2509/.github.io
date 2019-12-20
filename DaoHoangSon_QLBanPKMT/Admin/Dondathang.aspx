<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dondathang.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.Dondathang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Đơn đặt hàng</p>
    <asp:GridView ID="gvDondathang" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="SoDH" HeaderText="Số đơn hàng" />
            <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" />
            <asp:BoundField DataField="NgayDH" HeaderText="Ngày đặt hàng" />
            <asp:BoundField DataField="TriGia" HeaderText="Trị giá" />
            <asp:BoundField DataField="NgayGiao" HeaderText="Ngày giao" />
            <asp:BoundField DataField="TenNguoiNhan" HeaderText="Tên người nhận" />
            <asp:BoundField DataField="DienThoaiNhan" HeaderText="Điện thoại nhận" />
            <asp:BoundField DataField="HTThanhToan" HeaderText="Hình thức thanh toán" />
            <asp:BoundField DataField="HTGiaoHang" HeaderText="Hình thức giao hàng" />
        </Columns>

    </asp:GridView>
</asp:Content>
