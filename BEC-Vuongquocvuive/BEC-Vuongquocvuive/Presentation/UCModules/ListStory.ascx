<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListStory.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.ListStory" %>
<div class="breadcrumb">
    <a title="Trang chủ" href="#"><i class="fa fa-home"></i></a>» <a href="#">Truyện</a>»<a href="#">Danh muc truyen cap 1</a>» <span>Danh muc truyen cap 1</span> </div>
			<h3 class="title-page">Truyện Cổ tích</h3>	
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
                                    </div>
                                </a>
                         
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
			<ul class="pager"><li class="active"><a href="#">1</a> </li><li><a href="#">2</a> </li><li><a href="#">3</a> </li></ul>
          