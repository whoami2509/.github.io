<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ThongtinAdmin.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.ThongtinAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Thông tin các Admin</p>
    <asp:GridView ID="gvThongtin" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="MaAdmin" HeaderText="Mã admin" />
            <asp:BoundField DataField="HotenAdmin" HeaderText="Họ tên" />
            <asp:BoundField DataField="DiaChiAdmin" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="TenDNAdmin" HeaderText="Tên đăng nhập" />
            <asp:BoundField DataField="MatKhauAdmin" HeaderText="Mật khẩu" />
            <asp:BoundField DataField="NgaySinhAdmin" HeaderText="Ngày sinh" />
            <asp:BoundField DataField="DienThoaiAdmin" HeaderText="Điện thoại" />
            <asp:BoundField DataField="EmailAdmin" HeaderText="Email liên lạc" />
        </Columns>

    </asp:GridView>
</asp:Content>
