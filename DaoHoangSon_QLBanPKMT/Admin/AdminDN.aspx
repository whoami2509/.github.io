<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDN.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.AdminDN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">Đăng nhập</td>
       
        </tr>
        <tr>
            <td><p>Tên đăng nhập</p></td>
            <td>
                <asp:TextBox id="txtTenDN" runat="server" BorderWidth="1px" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" ErrorMessage="không để trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><p>Mật khẩu</p></td>
            <td>
                <input type="password" id="txtMatKhau" runat="server" required="required" style="border: 1px solid black" />
            </td>
        </tr>
         <tr>           
            <td colspan="2">
                <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click" />
            </td>          
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbLoi" runat="server"></asp:Label><br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server"/>
            </td>
        </tr>
    </table>
</asp:Content>
