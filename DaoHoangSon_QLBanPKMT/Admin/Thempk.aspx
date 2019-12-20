<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Thempk.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.Thempk" validateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="TSM">
        <fieldset>
            <h1>THÊM MỚI</h1>
            <table>
                <tr>
                    <td class="cot1">Tên phụ kiện:</td>
                    <td class="cot2"><asp:TextBox ID="txtTenPK" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="cot1">Ðơn vị tính:</td>
                    <td class="cot2"><asp:TextBox ID="txtDonViTinh" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="cot1">Ðơn giá:</td>
                    <td class="cot2"><asp:TextBox ID="txtDonGia" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="cot1">Mô tả:</td>
                    <td class="cot2">                       
                        <textarea id="txtMoTa" class="ckeditor" runat="server">
                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td class="cot1">Hình minh họa:</td>
                    <td class="cot2"><asp:FileUpload ID="fileHinh" runat="server" /></td>
                </tr>
                <tr>
                    <td class="cot1">Loại phụ kiện:</td>
                    <td class="cot2"><asp:DropDownList ID="ddlMaPK" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="cot1">Nhà xuất bản:</td>
                    <td class="cot2"><asp:DropDownList ID="ddlMaNSX" runat="server"></asp:DropDownList></td>
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
                    <td><asp:Button CssClass="luu" ID="btLuu" runat="server" Text="Lưu" OnClick="btLuu_Click" /></td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
