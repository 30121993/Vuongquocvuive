<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListGames.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.ListGames" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<section id="list-game">
        	<div class="wrapper-block">
            	<ul class="list-story">

                <!--------------------------------------------- -->
                <asp:Repeater ID="rptListGames" runat="server">
                <ItemTemplate>
                        <li class="story-item">
                        <div class="wrapper-item">
                             <img alt="" src="" title="Anh bia"/>
                          <div class="col-book"></div>
                          <a href="Games.aspx?mod=GameDetail&id=<%# Eval("Game_ID")%>">
                              <div class="story-info">
                  	            <h3>
                                <%# Eval("Game_Name")%>
                                </h3>
                                <p class="total-view">Lượt chơi:<em><%# Eval("Game_TotalView")%></em></p>
                                <p class="total-view">Giá:<em><%# Eval("Game_Price")%> vàng</em></p>
                              </div>
                          </a>
                        </div>
                      </li>
                  </ItemTemplate>
               </asp:Repeater>
              <!--------------------------------------------- -->
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
            </div>
    </section>
    </ContentTemplate>
</asp:UpdatePanel>