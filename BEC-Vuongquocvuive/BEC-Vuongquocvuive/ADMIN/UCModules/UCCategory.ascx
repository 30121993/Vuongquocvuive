<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCCategory.ascx.cs" Inherits="BEC_Vuongquocvuive.ADMIN.UCModules.UCCategory" %>
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div id="theme-change" class="hidden-phone"><i class="icon-cogs"></i><span class="settings"><span class="text">Theme:</span><span class="colors"><span class="color-default" data-style="default"></span><span class="color-gray" data-style="gray"></span><span class="color-purple" data-style="purple"></span><span class="color-navy-blue" data-style="navy-blue"></span></span></span></div>
          <h3 class="page-title">Quản Lí Truyện</h3>
          <ul class="breadcrumb">
            <li><a href="#"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
            <li><a href="#">Danh Sách Danh Mục</a><span class="divider-last">&nbsp;</span></li>
          </ul>
        </div>
      </div>
      <div class="row-fluid">
        <div class="span12">
          <div class="widget">
            <div class="widget-title">
              <h4><i class="icon-reorder"></i>Danh Sách Danh Mục</h4>
            </div>
            <div class="widget-body">
              <table class="table table-striped table-bordered" id="sample_1"> 
                <thead>
                  <tr>
                    <th style="width:20px;">STT</th>
                    <th>Tên Danh Mục</th>
                    <th class="hidden-phone">Danh Mục Cha</th>
                    <th class="hidden-phone">Người đăng</th>
                    <th class="hidden-phone">Thời gian cập nhật</th>
					<th class="hidden-phone"></th>
                  </tr>
                </thead>
                <tbody>
                    <asp:Literal ID="tbodycategory" runat="server"></asp:Literal>
				</tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
		      <div class="row-fluid">
        <div class="span12">
          <div class="widget">
            <div class="widget-title">
              <h4><i class="icon-reorder"></i>Thêm Danh Mục</h4>
              <span class="tools"><a href="javascript:;" class="icon-chevron-down"></a><a href="javascript:;" class="icon-remove"></a></span></div>
            <div class="widget-body form">
              <form action="#" class="form-horizontal" />
              
              <div class="control-group">
                <label class="control-label">Tên Danh Mục</label>
                <div class="controls">
                  <input type="text" class="span6 " />
                  <span class="help-inline">Some hint here</span></div>
              </div>
              <div class="control-group">
                <label class="control-label">Đường Dẫn</label>
                <div class="controls">
                  <input class="span6 " type="text" placeholder="Disabled input here..." disabled/="" />
                  <span class="help-inline">Some hint here</span></div>
              </div>
              <div class="control-group">
                <label class="control-label">Mô tả danh mục truyện</label>
                <div class="controls">
                  <textarea rows="6" class="span6 popovers" data-trigger="hover" data-content="Mô tả ngắn gọn cho truyện" data-original-title="Mô tả" ></textarea>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Danh mục Cha</label>
                <div class="controls">
                  <select class="span6 " data-placeholder="Choose a Category" tabindex="1">
                    <option value="" />
                    Lựa chọn...
                    <option value="Category 1" />
                    Truyện Cổ Tích
                    <option value="Category 2" />
                    Truyện Danh Nhân
                    <option value="Category 3" />
                    Category 3
                    <option value="Category 4" />
                    Category 4
                  </select>
                </div>
              </div>
              <div class="form-actions">
                <button type="submit" class="btn btn-success">Tạo</button>
                <button type="button" class="btn">Hủy</button>
              </div>
              </form>
            </div>
          </div>
        </div>
      </div>