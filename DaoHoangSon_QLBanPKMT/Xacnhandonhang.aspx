<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Xacnhandonhang.aspx.cs" Inherits="DaoHoangSon_QLBanPKMT.Xacnhandonhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Thông tin</p>
    <br />
     <center><h2>Kính chào quý khách!</h2></center>
    
    <table> Thông tin đặt hàng của quý khách đã được chúng tôi ghi nhận.Chúng tôi sẽ phản hồi thông tin sớm nhất có thể tới quý khách.          
    Công ty chúng tôi rất hân hạnh được phục vụ quý khách.Khi cần quý khách có thể liên hệ qua số điện thoại 113 hoặc 115.
    Xin cảm ơn.
        </table>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Trangchu.aspx" Font-Underline="True">Về trang chủ</asp:HyperLink>
</asp:Content>
