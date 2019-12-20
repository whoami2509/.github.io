<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Suapk.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.Suapk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="TSM">
        <fieldset>
            <h1>SỬA THÔNG TIN PHỤ KIỆN</h1>
            <table>
                <tr>
                    <td class="cot1">Tên phụ kiện:</td>
                    <td class="cot2"><asp:TextBox ID="txtTenPK" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="cot1">Đơn vị tính:</td>
                    <td class="cot2"><asp:TextBox ID="txtDonViTinh" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="cot1">Đơn giá:</td>
                    <td class="cot2"><asp:TextBox ID="txtDonGia" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="cot1">Mô tả:</td>
                    <td class="cot2">
                        <textarea id="txtMoTa2" class="ckeditor" runat="server"></textarea>
                    </td>
                </tr>
                <tr>
                    <td class="cot1">Hình minh họa:</td>
                    <td class="cot2"><asp:FileUpload ID="fileHinh" runat="server" /></td>
                </tr>
                <tr>
                    <td class="cot1">Mã Loại PK:</td>
                    <td class="cot2"><asp:TextBox ID="txtMaLoaiPK" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="cot1">Mã NSX:</td>
                    <td class="cot2"><asp:TextBox ID="txtMaNSX" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="cot1">Ngày cập nhật:</td>
                    <td class="cot2"><asp:Calendar ID="cldNgay" runat="server"></asp:Calendar></td>
                </tr>
                <tr>
                    <td class="cot1">Số lượng:</td>
                    <td class="cot2"><asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="cot1">Số lần xem:</td>
                    <td class="cot2"><asp:TextBox ID="txtSoLanXem" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button CssClass="luu" ID="btLuu" runat="server" Text="Lưu" OnClick="btLuu_Click" />
                        <asp:Button CssClass="luu" ID="bthien" runat="server" Text="Hiện" OnClick="bthien_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
