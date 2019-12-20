<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ThemNSX.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.ThemNSX" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Thêm mới nhà sản xuất</p>
    <table style="width:100%;">
        <tr>
            <td>Tên nhà sản xuất</td>
            <td>
                <asp:TextBox id="txtTenNSX" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenNSX" ErrorMessage="không để trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Địa chỉ:</td>
            <td>
                <asp:TextBox id="txtDiaChi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="không để trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Điện thoại:</td>
            <td>
                <asp:TextBox id="txtDienThoai" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="không để trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnLuu" runat="server" Text="Lưu" OnClick="btnLuu_Click" />
            </td>
            
        </tr>
    </table>
</asp:Content>
