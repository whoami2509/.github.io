<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>THÔNG TIN VỀ GIỎ HÀNG CỦA BẠN</p>
    <asp:GridView ID="gvGiohang" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="gvgiohang" DataKeyNames="MaPK" AutoGenerateColumns="False" OnRowCommand="gvGioHang_RowCommand" Width="786px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="Mapk" HeaderText="Mã phụ kiên" />
            <asp:BoundField DataField="Tenpk" HeaderText="Tên phụ kiện " />
            <asp:BoundField DataField="Dongia" HeaderText="Đơn giá" />
            <asp:TemplateField HeaderText="Số lượng" > 
                <ItemTemplate>
                    <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="Thanhtien" HeaderText="Thành tiền" />
            <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/hinh/icons8-delete-20.png" Text="Button" />
        </Columns>
        </asp:GridView>
    
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Tổng cộng"></asp:Label>

                    </td>
                    <td>
                        <asp:Label ID="lbTongThanhTien" runat="server" ForeColor="#003399" ></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btTiepTucMua" runat="server" Text="Tiếp tục mua" OnClick="btTiepTucMua_Click" BorderStyle="Groove" /></td>
                    <td>
                        <asp:Button ID="btXoaGioHang" runat="server" Text="Xóa giỏ hàng" OnClick="btXoaGioHang_Click" BorderStyle="Groove" /></td>
                    <td>
                        <asp:Button ID="btCapNhat" runat="server" Text="Cập nhật" OnClick="btCapNhat_Click" BorderStyle="Groove" /></td>
                    <td>
                        <asp:Button ID="btThanhToan" runat="server" Text="Đặt hàng" OnClick="btThanhToan_Click" BorderStyle="Groove" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="Red" ></asp:Label></td>
                </tr>
            </table>
</asp:Content>
