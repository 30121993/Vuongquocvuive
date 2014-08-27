<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListGames.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.ListGames" %>


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
                              </div>
                          </a>
                        </div>
                      </li>
                  </ItemTemplate>
               </asp:Repeater>
              <!--------------------------------------------- -->
               <li class="story-item">
                <div class="wrapper-item">
                <img alt="" src="images/LogoVTCGame.png" title="Anh bia"/>
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                    <img alt="" src="images/LogoVTCGame.png" title="Anh bia"/>
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                    <img alt="" src="images/LogoVTCGame.png" title="Anh bia"/>
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề Game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>                <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>                <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề Game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                                            <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
                              <li class="story-item">
                <div class="wrapper-item">
                  <div class="col-book"></div>
                  <div class="story-info">
                  	<h3>
                    Tiêu đề Game
                    </h3>
                    <p class="total-view">Lượt chơi:<em>1122</em></p>
                  </div>
                </div>
              </li>
            </ul>
            </div>
    </section>