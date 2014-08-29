<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCStory.ascx.cs" Inherits="BEC_Vuongquocvuive.ADMIN.UCModules.UCStory" %>
   <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div id="theme-change" class="hidden-phone"><i class="icon-cogs"></i><span class="settings"><span class="text">Theme:</span><span class="colors"><span class="color-default" data-style="default"></span><span class="color-gray" data-style="gray"></span><span class="color-purple" data-style="purple"></span><span class="color-navy-blue" data-style="navy-blue"></span></span></span></div>
          <h3 class="page-title">Quản Lí Truyện</h3>
          <ul class="breadcrumb">
            <li><a href="#"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
            <li><a href="#">Danh Sách Truyện</a><span class="divider-last">&nbsp;</span></li>
          </ul>
        </div>
      </div>
      <div class="row-fluid">
        <div class="span12">
          <div class="widget">
            <div class="widget-title">
              <h4><i class="icon-reorder"></i>Danh Sách Truyện</h4>
            </div>
            <div class="widget-body">
              <table class="table table-striped table-bordered" id="sample_1">
                <thead>
                  <tr>
                    <th style="width:20px;">STT</th>
                    <th>Tiêu đề truyện</th>
                    <th class="hidden-phone">Lượt xem</th>
                    <th class="hidden-phone">Danh Mục</th>
                    <th class="hidden-phone">Người đăng</th>
                    <th class="hidden-phone">Thời gian cập nhật</th>
                    <th class="hidden-phone">Trạng thái</th>
					<th class="hidden-phone"></th>
                  </tr>
                </thead>
                <tbody>
                  <asp:Literal ID="tbodyStory" runat="server"></asp:Literal>

				</tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>