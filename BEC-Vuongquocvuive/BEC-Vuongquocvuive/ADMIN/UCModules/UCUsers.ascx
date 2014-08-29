<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCUsers.ascx.cs" Inherits="BEC_Vuongquocvuive.ADMIN.UCModules.UCUsers" %>
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div id="theme-change" class="hidden-phone"><i class="icon-cogs"></i><span class="settings"><span class="text">Theme:</span><span class="colors"><span class="color-default" data-style="default"></span><span class="color-gray" data-style="gray"></span><span class="color-purple" data-style="purple"></span><span class="color-navy-blue" data-style="navy-blue"></span></span></span></div>
          <h3 class="page-title">Quản Lí Quản Trị Viên</h3>
          <ul class="breadcrumb">
            <li><a href="#"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
            <li><a href="#">Danh Sách Quản Trị Viên</a><span class="divider-last">&nbsp;</span></li>
          </ul>
        </div>
      </div>
      <div class="row-fluid">
        <div class="span12">
          <div class="widget">
            <div class="widget-title">
              <h4><i class="icon-reorder"></i>Danh Sách Quản Trị Viên</h4>
            </div>
            <div class="widget-body">
              <table class="table table-striped table-bordered" id="sample_1">
                <thead>
                  <tr>
                    <th style="width:20px;">STT</th>
                    <th>Tên Quản Trị Viên</th>
                    <th class="hidden-phone">Tài Khoản</th>
                    <th class="hidden-phone">Email</th>
                    <th class="hidden-phone">Quyền</th>
                    <th class="hidden-phone">Thời gian cập nhật</th>
                    <th class="hidden-phone">Trạng thái</th>
					<th class="hidden-phone"></th>
                  </tr>
                </thead>
                <tbody>
                    <asp:Literal ID="tbody" runat="server"></asp:Literal>
				</tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
