<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucleft.ascx.cs" Inherits="DaoHoangSon_QLBanPKMT.uc.ucleft" %>
<link href="../css/Style.css" rel="stylesheet" />
<style type="text/css">
    .nen{
        background-color:#b50d0d;
    }
    .p{
        font-size:20px;
        text-align:center;
    }
</style>
<aside id="left">
            <p class="p">THƯƠNG HIỆU</p>

    <div class="nen">
        <asp:GridView ID="gvThuonghieu" runat="server" AutoGenerateColumns="False" Width="237px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table class="nhasanxuat">
                            <tr>
                                <td class="thuonghieu">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../Phukientheonsx.aspx?maNSX="+Eval("MaNSX") %>' Text='<%# Eval("TenNSX") %>'></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <ControlStyle Font-Underline="False" ForeColor="White" />
                    <FooterStyle BorderStyle="Solid" BorderWidth="1px" />
                    <HeaderStyle Height="30px" />
                    <ItemStyle Font-Size="20px" HorizontalAlign="Left" Font-Underline="False" Height="20px" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <p class="p">LOẠI PHỤ KIỆN</p>
    <div class="nen">
        <asp:GridView ID="gvLoaiphukien" runat="server" AutoGenerateColumns="False" Width="236px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table class="loai">
                            <tr>
                                <td class="loai">
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "../Phukientheoloai.aspx?maLoaiPK="+Eval("MaLoaiPK") %>' Text='<%# Eval("TenLoaiPhuKien") %>'></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <ControlStyle ForeColor="White" />
                    <ItemStyle Font-Size="20px" HorizontalAlign="Justify" />
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
    </div>
</aside>