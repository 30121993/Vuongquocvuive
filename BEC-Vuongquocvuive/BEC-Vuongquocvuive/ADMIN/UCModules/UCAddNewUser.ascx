<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCAddNewUser.ascx.cs" Inherits="BEC_Vuongquocvuive.ADMIN.UCModules.UCAddNewUser" %>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div id="theme-change" class="hidden-phone"><i class="icon-cogs"></i><span class="settings"><span class="text">Theme:</span><span class="colors"><span class="color-default" data-style="default"></span><span class="color-gray" data-style="gray"></span><span class="color-purple" data-style="purple"></span><span class="color-navy-blue" data-style="navy-blue"></span></span></span></div>
          <h3 class="page-title">Quản Lí Game</h3>
          <ul class="breadcrumb">
            <li><a href="#"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
            <li><a href="#">Thêm Mới Game</a><span class="divider-last">&nbsp;</span></li>
          </ul>
        </div>
      </div>
      <div class="row-fluid">
        <div class="span12">
          <div class="widget">
            <div class="widget-title">
              <h4><i class="icon-reorder"></i>Thêm Mới Game</h4>
              <span class="tools"><a href="javascript:;" class="icon-chevron-down"></a><a href="javascript:;" class="icon-remove"></a></span></div>
            <div class="widget-body form">
              <form action="" class="form-horizontal" id="frmAddNew" runat="server" method="post" >
                  <div class="control-group">
                    <p class="controls" stype="color:red">Lỗi</p>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Tên người dùng</label>
                    <div class="controls">
                      <input type="text" class="span6 " name="fullname" />
                      <span class="help-inline">Không được bỏ trống</span></div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Tên tài khoản</label>
                    <div class="controls">
                      <input type="text" class="span6 " name="username" />
                      <span class="help-inline">Không được bỏ trống</span></div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Mật Khẩu</label>
                    <div class="controls">
                      <input type="password" class="span6 " name="password" />
                      <span class="help-inline">Không được bỏ trống</span></div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Nhập Lại Mật Khẩu</label>
                    <div class="controls">
                      <input type="password" class="span6 " name="repassword" />
                      <span class="help-inline">Không được bỏ trống</span></div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Số Điện Thoại</label>
                    <div class="controls">
                      <input type="text" class="span6 " name="phone" />
                      <span class="help-inline">Không được bỏ trống</span></div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Quyền</label>
                    <div class="controls">
					    <label for="category"></label>
                        <asp:Literal ID="selectUserType" runat="server"></asp:Literal>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Trạng Thái</label>
                    <div class="controls">
                      <label class="radio">
                        <div class="radio" id="uniform-undefined"><span class="checked"><input type="radio" value="false" name="status" style="opacity: 0;"></span></div>
                        Khóa </label>
                      <label class="radio">
                        <div class="radio" id="uniform-undefined"><span class=""><input type="radio" =""="" checked value="true" name="status" style="opacity: 0;"></span></div>
                        Hoạt Động</label>
                    </div>
                  </div>
                  <div class="form-actions">
                    <input type="submit" class="btn btn-success" name="submit" value="Tạo"/>
                    <input type="reset" class="btn" value="Hủy">
                  </div>
              </form>
            </div>
          </div>
        </div>
      </div>
	</div>