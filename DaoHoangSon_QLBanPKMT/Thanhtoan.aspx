<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Thanhtoan.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Thanhtoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2" align="center"><p>THÔNG TIN ĐƠN ĐẶT HÀNG</p></td>
        </tr>
        <tr>
            <td id="thongtin" colspan="2">THÔNG TIN TÀI KHOẢN</td>
        </tr>
        <tr>
            <td>Họ tên:</td>
            <td><asp:Label ID="lbHoTen" runat="server" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Địa chỉ:</td>
            <td><asp:Label ID="lbDiaChi" runat="server" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Điện thoại</td>
            <td><asp:Label ID="lbDienThoai" runat="server" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><asp:Label ID="lbEmail" runat="server" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td id="thongtin" colspan="2">THÔNG TIN GIỎ HÀNG</td>
        </tr>
        <tr>
            <td colspan="2" align="center"><asp:GridView ID="gvGiohang" runat="server" AutoGenerateColumns="False" DataKeyNames="MaPK" CellPadding="4" ForeColor="#333333" GridLines="None" Width="727px" CssClass="gvgiohang">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaPK" HeaderText="Mã phụ kiện" />
                    <asp:BoundField DataField="TenPK" HeaderText="Tên phụ kiện" />
                    <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" />
                    <asp:TemplateField HeaderText="Số lượng">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("SoLuong") %>' Height="16px" Width="100%"></asp:TextBox>
                        </ItemTemplate>
                        <ControlStyle Width="36px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" />
                </Columns>
                </asp:GridView></td>
        </tr>
        <tr>
            <td colspan="2" align="right"><asp:Label ID="Label1" runat="server" Font-Bold="True">Tổng tiền:</asp:Label><asp:Label ID="lbTongTien" runat="server" Font-Bold="True"></asp:Label><asp:Label ID="Label2" runat="server" Font-Bold="True">&nbsp;vnđ</asp:Label></td>
        </tr>
        <tr>
            <td id="thongtin" colspan="2">THÔNG TIN GIAO HÀNG</td>
        </tr>
        <tr>
            <td>Ngày giao:</td>
            <td><asp:Calendar ID="calNgayGiao" runat="server">
                <TitleStyle BackColor="#206AB5" ForeColor="White" />
                </asp:Calendar></td>
        </tr>
        <tr>
            <td>Người nhận:</td>
            <td><asp:TextBox ID="txtNguoiNhan" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" Text="không được rỗng" ControlToValidate="txtNguoiNhan" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Địa chỉ:</td>
            <td><asp:TextBox ID="txtDiaChiNhan" runat="server" BorderColor="Black" BorderStyle="None"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDiaChiNhan" ForeColor="Red">không được rỗng</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Điện thoại:</td>
            <td><asp:TextBox ID="txtDienThoaiNhan" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDienThoaiNhan" ForeColor="Red">không được rỗng</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Hình thức thanh toán:</td>
            <td><asp:RadioButtonList ID="rblHinhThucThanhToan" runat="server">
                <asp:ListItem Value="0">Thanh toán trước khi giao hàng</asp:ListItem>
                <asp:ListItem Value="1">Thanh toán sau khi giao hàng</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td>Hình thức giao hàng:</td>
            <td><asp:RadioButtonList ID="rblHinhThucGiaoHang" runat="server">
                <asp:ListItem Value="0">Giao trực tiếp</asp:ListItem>
                <asp:ListItem Value="1">Chuyển giao</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><asp:Button ID="btDongY" runat="server" Text="Đồng ý" OnClick="btDongY_Click" BackColor="#3366FF" BorderColor="#666666" BorderStyle="Inset" Font-Size="16px" ForeColor="White" Height="35px" Width="70px" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
