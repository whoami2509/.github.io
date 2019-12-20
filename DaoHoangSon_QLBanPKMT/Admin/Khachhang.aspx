<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Khachhang.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.Khachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Danh sách khách hàng</p>
    <asp:GridView ID="gvKhachhang" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" />
            <asp:BoundField DataField="HoTenKH" HeaderText="Tên khách hàng" />
            <asp:BoundField DataField="TenDNKH" HeaderText="TenDNKH" />
            <asp:BoundField DataField="MatKhauKH" HeaderText="MatKhauKH" />
            <asp:BoundField DataField="DiaChiKH" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="DienThoaiKH" HeaderText="Số điện thoại" />
        </Columns>

    </asp:GridView>
</asp:Content>
