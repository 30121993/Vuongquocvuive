<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListStory.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.ListStory" %>
<%@ Register src="~/Presentation/UCModules/Breadcrumb.ascx" tagname="Breadcrumb" tagprefix="uc1" %>
<%@ Register assembly="CollectionPager" namespace="SiteUtils" tagprefix="cc1" %> 

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<uc1:Breadcrumb ID="Breadcrumb1" runat="server" />
            <asp:Repeater ID="Catalog_Name" runat="server">
                <ItemTemplate>
                        <h3 class="title-page"><%# Eval("Catalog_Name")%></h3>
                </ItemTemplate>
            </asp:Repeater>
            <ul class="list-story">
                <asp:Repeater ID="rptListStory" runat="server">
                    <ItemTemplate>
                         <li class="story-item">
                            <div class="wrapper-item">
                                <img alt="" src="data/images/<%# Eval("Story_Catalog")%>" title="Anh bia" />
                                <div class="col-book"></div>
                                <a href="StoryUC.aspx?mod=StoryDetail&id=<%# Eval("Story_ID")%>">
                                    <div class="story-info">
                  	                    <h3> <%# Eval("Story_Name")%></h3>
                                        <p class="total-view">Lượt xem:<em><%# Eval("Story_TotalView")%></em></p>
                                        <p class="total-view">Giá:<em><%# Eval("Story_Price")%> vàng</em></p>
                                    </div>
                                </a>
                         
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

            
			<ul class="pager">
                <asp:Repeater ID="rptPages" runat="server" onitemcommand="rptPages_ItemCommand1">
                    <ItemTemplate>
                        <li>
                            <asp:LinkButton ID="btnPage" CommandName="Page" CommandArgument="<%# Container.DataItem %>" runat="server"><%# Container.DataItem %></asp:LinkButton>
                        </li>
                    </ItemTemplate>
                 </asp:Repeater>
            </ul>
    </ContentTemplate>
</asp:UpdatePanel>      