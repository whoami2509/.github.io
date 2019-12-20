<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Doimatkhau.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Doimatkhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">Đổi mật khẩu</td>
       
        </tr>
        <tr>
            <td>Tên đăng nhập</td>
            <td>
                <asp:TextBox id="txtTenDN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" ErrorMessage="không để trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mật khẩu cũ:</td>
            <td>
                <asp:TextBox id="txtMatKhauCu" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMatKhauCu" ErrorMessage="không để trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mật khẩu mới</td>
            <td>
                <asp:TextBox ID="txtMatKhauMoi" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhauMoi" ErrorMessage="Không để trống">*</asp:RequiredFieldValidator>
            </td>        
        </tr>
        <tr>
            <td>Nhập lại mật khẩu</td>
            <td>
                <asp:TextBox ID="txtNhapLaiMatKhauMoi" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNhapLaiMatKhauMoi" ErrorMessage="Không để trống">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu không giống nhau" ControlToCompare="txtMatKhauMoi" ControlToValidate="txtNhapLaiMatKhauMoi"></asp:CompareValidator>

            </td>
        </tr>
         <tr>           
            <td colspan="2">
                <asp:Button ID="btnDoimatKhau" runat="server" Text="Đồng ý" OnClick="btnDoimatKhau_Click" />
            </td>          
        </tr>
        <tr>
                 <td colspan="2">
                     <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
                     <br />
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server"/>
                 </td>
                 </tr>
    </table>
</asp:Content>
