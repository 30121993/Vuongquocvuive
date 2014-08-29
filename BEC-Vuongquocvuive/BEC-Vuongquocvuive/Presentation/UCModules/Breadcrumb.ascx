<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Breadcrumb.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.Breadcrumb" %>
<div class="breadcrumb">
    <a title="Trang chủ" href="Story.aspx"><i class="fa fa-home"></i></a>» <a href="Story.aspx">Truyện</a> 

<asp:Repeater ID="rptParent" runat="server">
    <ItemTemplate>
        » <a href="StoryUC.aspx?mod=ListStory&id=<%# Eval("Catalog_ID") %>"><%# Eval("Catalog_Name")%></a>
    </ItemTemplate>
</asp:Repeater>
<asp:Repeater ID="rptChild" runat="server">
    <ItemTemplate>
        » <a href="StoryUC.aspx?mod=ListStory&id=<%# Eval("Catalog_ID") %>"><%# Eval("Catalog_Name")%></a>
    </ItemTemplate>
</asp:Repeater>
</div>