<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Chitietphukien.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Chitietphukien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dtchitietpk" runat="server">
        <ItemTemplate>
            <table style="width: 100%">
                <tr >
                    <td rowspan="4">
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# "../hinh/phukien/"+Eval("HinhMinhHoa") %>' Height="300px" />
                    </td>
                    <td colspan="2" style="height: 17px" >
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenPK") %>'></asp:Label>
                    </td>
                </tr >
                <tr >
                    <td style="height: 17px" >Giá bán lẻ:</td>
                    <td style="height: 17px">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                    </td>
                </tr>
                <tr >
                    <td>Thương hiệu:</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("TenNSX") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server"  ImageUrl="~/hinh/icons8-buy-30.png" NavigateUrl='<%# "../Giohang.aspx?maPK="+Eval("MaPK") %>' >HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 17px">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
                
            </table>
        </ItemTemplate>
    </asp:DataList>
    <h2>Viết bình luận và đánh giá</h2><br />
    <asp:TextBox ID="txtdanhgia" runat="server" BorderColor="#CC0000" BorderWidth="1px" Font-Size="15px" Height="100px" Width="300px" ToolTip="Nhập bình luận" TextMode="MultiLine"></asp:TextBox><br />
    <asp:TextBox ID="txthoten" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Size="15px" Height="20px" Width="150px" ToolTip="Nhập họ tên"></asp:TextBox>&#160
    <asp:Button ID="btnluu" runat="server" Text="Gửi" OnClick="btnluu_Click" BackColor="#3366CC" BorderWidth="1px" ForeColor="White" Width="50px" BorderColor="#003399" Font-Size="15px" Height="20px" />
    <br /><br />
        <h2>Đánh giá từ người dùng trước đó</h2>
    <br />
    <asp:DataList ID="dtdanhgia" runat="server" CellPadding="4" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:Label ID="lbhotenkh" runat="server" Text='<%# Eval("HoTenKH") %>' Font-Bold="True" Font-Size="20px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &#160&#160&#160&#160&#160<asp:Label ID="lbdanhgiakh" runat="server" Text='<%# Eval("DanhGiaKH") %>' Font-Size="18px"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>

        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />

    </asp:DataList>

</asp:Content>
