<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Phukientheonsx.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Phukientheonsx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dtthuonghieu" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td style="height: 18px">
                        <asp:Image ID="hinh" runat="server" ImageUrl='<%# "../hinh/phukien/"+Eval("HinhMinhHoa") %>' Width="220px" Height="200px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="maPK" runat="server" NavigateUrl='<%# "../Chitietphukien.aspx?maPK="+Eval("MaPK") %>' Text='<%# Eval("TenPK") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="dongia" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                    </td>
                </tr>

            </table>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>
