<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Nhasanxuat.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.Nhasanxuat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mid">
    <p>Danh sách nhà xuất bản</p>
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" NavigateUrl="~/Admin/ThemNSX.aspx">Thêm mới</asp:HyperLink>
    <asp:GridView ID="gvNhasanxuat" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNSX"  CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="gvNhasanxuat_RowCancelingEdit" OnRowCommand="gvNhasanxuat_RowCommand" OnRowEditing="gvNhasanxuat_RowEditing" OnRowUpdating="gvNhasanxuat_RowUpdating" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaNSX" HeaderText="Mã NSX" />                                                        
            <asp:BoundField DataField="TenNSX" HeaderText="Tên thương hiệu"></asp:BoundField>
            <asp:BoundField DataField="DiaChiNSX" HeaderText="Địa chỉ"></asp:BoundField>
            <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại"></asp:BoundField>
            <asp:ButtonField ImageUrl="~/hinh/icons8-delete-20.png" Text="Button" ButtonType="Image" CommandName="Xoa" HeaderText="Xóa"></asp:ButtonField>
            <asp:CommandField CancelText="Hủy" EditText="Sửa" UpdateText="Lưu" HeaderText="Sửa" ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
    </div>
</asp:Content>
