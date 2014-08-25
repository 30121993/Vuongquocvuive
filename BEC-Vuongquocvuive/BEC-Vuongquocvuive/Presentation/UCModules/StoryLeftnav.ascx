<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StoryLeftnav.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.StoryLeftnav" %>
<div class="nav-block">
      <nav>
              <ul id="nav-col">
                  <asp:Repeater ID="rptListCatalog" runat="server" OnItemDataBound="rptListCatalog_ItemDataBound">
                      <ItemTemplate>
                        <li class="nav-item">
                            <a href="StoryUC.aspx?mod=ListStory&id=<%# Eval("Catalog_ID") %>" title="<%# Eval("Catalog_Name") %>">
                                 <%# Eval("Catalog_Name")%>
                             </a>
                             <asp:Repeater ID="rptChild" runat="server">
                                <HeaderTemplate><ul></HeaderTemplate>
                                    <ItemTemplate>
                                        <li>
                                            <a href="StoryUC.aspx?mod=ListStory&id=<%# Eval("Catalog_ID") %>" >
                                                <%# Eval("Catalog_Name")%>
                                            </a>
                                        </li>

                                    </ItemTemplate>
                                <FooterTemplate></ul></FooterTemplate>
                             </asp:Repeater>
                        </li>
                      </ItemTemplate>
                  </asp:Repeater>
              </ul>
      </nav>
</div>
          <!--End nav-->