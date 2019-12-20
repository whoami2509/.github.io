<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Dangnhap"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;" border="1" >
        <p>Đăng nhập</p>
        <tr>
            <td style="height: 23px"><p>Tên đăng nhập</p></td>
            <td style="height: 23px">
                <asp:TextBox id="txtTenDNKH" runat="server" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDNKH" ErrorMessage="không để trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><p>Mật khẩu</p></td>
            <td>
                <input type="password" id="txtMatKhauKH" runat="server" required="required" style="border: 1px solid #000000"/>
            </td>
        </tr>
         <tr>           
            <td colspan="2">
                <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click" />
            </td>          
        </tr>
        <tr>
            <td colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl= "~/Doimatkhau.aspx"  >Đổi mật khẩu</asp:HyperLink>
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
