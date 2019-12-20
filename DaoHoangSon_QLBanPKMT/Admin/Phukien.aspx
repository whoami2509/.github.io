<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Phukien.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Admin.Phukien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mid">
        <fieldset>
            <h1>DANH SÁCH</h1>
            <asp:HyperLink CssClass="link" ID="HyperLink1" NavigateUrl="~/Admin/Thempk.aspx" runat="server">Thêm mới</asp:HyperLink>
            <asp:GridView CssClass="gv" ID="gvPk" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="MaPK" OnRowCommand="gvPk_RowCommand" AllowPaging="True" OnPageIndexChanging="gvPk_PageIndexChanging" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="MaPK" HeaderText="Mã Phụ kiện" />
                    <asp:BoundField DataField="TenPK" HeaderText="Tên phụ kiện" >
                    <ItemStyle BorderColor="Black" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DonViTinh" HeaderText="Ðơn Vị Tính" />
                    <asp:BoundField DataField="DonGia" HeaderText="Ðơn Giá" />
                    <asp:BoundField DataField="NgayCapNhat" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày Cập nhật" />
                    <asp:BoundField DataField="SoLuongBan" HeaderText="Số lượng Bán" />
                    <asp:BoundField DataField="SoLanXem" HeaderText="Số lần Xem" />
                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/hinh/icons8-delete-20.png" />
                    <asp:TemplateField HeaderText="Sửa">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl='<%# "../Admin/Suapk.aspx?Ma="+Eval("MaPK") %>'>Sửa</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            <asp:Label ID="lbThongBaoLoi" runat="server" Font-Size="15px" ForeColor="Red"></asp:Label>
        </fieldset>
    </div>
</asp:Content>
