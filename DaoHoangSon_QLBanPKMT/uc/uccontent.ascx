<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uccontent.ascx.cs" Inherits="DaoHoangSon_QLBanPKMT.uc.uccontent" %>

<style type="text/css">
    .phukienmoi{
                border-top: 1px solid black;

    }
    .hieuung{
        height:200px;
        margin-left:100px;
    }
    .hieuung:hover{
        cursor:pointer;
        border:thin;
        border-color:black;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);  
          
    }
    .khung{
        text-align:center;
        padding:7px;
        margin:10px;
    }
</style>

<aside id="phukienmoi">
    <asp:DataList ID="dtmoi" runat="server" RepeatColumns="4" >
        <ItemTemplate>
            <table class="auto-style1">
                <tr class="hieuung">
                    <td class="khung">
                       <asp:Image ID="hinhphukien" CssClass="img" runat="server" ImageUrl='<%# "../hinh/phukien/"+Eval("HinhMinhHoa") %>' Width="220px" Height="200px" />
                       <br /><asp:HyperLink ID="tenphukien" CssClass="khung" runat="server" Text='<%# Eval("TenPK") %>' NavigateUrl='<%# "../Chitietphukien.aspx?MaPK="+Eval("MaPK") %>'></asp:HyperLink>
                       <br /><asp:Label ID="dongia" CssClass="khung" runat="server" Text='<%# Eval("DonGia") %>'>VNĐ</asp:Label>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</aside>