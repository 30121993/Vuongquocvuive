<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCAddNewStory.ascx.cs" Inherits="BEC_Vuongquocvuive.ADMIN.UCModules.UCAddNewStory" %>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div id="theme-change" class="hidden-phone"><i class="icon-cogs"></i><span class="settings"><span class="text">Theme:</span><span class="colors"><span class="color-default" data-style="default"></span><span class="color-gray" data-style="gray"></span><span class="color-purple" data-style="purple"></span><span class="color-navy-blue" data-style="navy-blue"></span></span></span></div>
          <h3 class="page-title">Quản Lí Truyện</h3>
          <ul class="breadcrumb">
            <li><a href="#"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
            <li><a href="#">Thêm Mới Truyện</a><span class="divider-last">&nbsp;</span></li>
          </ul>
        </div>
      </div>
      <div class="row-fluid">
        <div class="span12">
          <div class="widget">
            <div class="widget-title">
              <h4><i class="icon-reorder"></i>Thêm Mới Truyện</h4>
              <span class="tools"><a href="javascript:;" class="icon-chevron-down"></a><a href="javascript:;" class="icon-remove"></a></span></div>
            <div class="widget-body form">
              <form action="StoryControl.aspx?mod=addnewstory" class="form-horizontal" id="AddNew" method="post" />
               <div class="control-group">
                <label class="control-label">Thuộc Danh Mục</label>
                <div class="controls">
					<label for="category"></label>
                      <select id="category" class="span6 " data-placeholder="Choose a Category" name="storycategory" tabindex="1">
                        <option value="" >Lựa chọn...</option>
                        <asp:Literal ID="SelectCategory" runat="server"></asp:Literal>
                        </select>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Tiêu đề truyện</label>
                <div class="controls">
                  <input id="title-story" type="text" class="span6 " name="storyname" />
                  <span  for="title-story" class="help-inline">Không được bỏ trống</span></div>
              </div>
               <div class="control-group">
                <label class="control-label">Price</label>
                <div class="controls">
                  <input id="Text1" type="text" class="span6 " name="storyprice" requied />
                  <span  for="title-story" class="help-inline">Không được bỏ trống</span></div>
              </div>
              <div class="control-group">
                <label class="control-label">Nhạc nền</label>
                <div class="controls">
                  <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="input-append">
                      <div class="uneditable-input"><i class="icon-file fileupload-exists"></i><span class="fileupload-preview"></span></div>
                      <span class="btn btn-file"><span class="fileupload-new">Chọn File</span><span class="fileupload-exists">Thay đổi</span>
                      <input type="file" class="default" name="soundtrack"/>
                      </span> <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Gỡ bỏ</a>
					</div>
                  </div>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Đường Dẫn</label>
                <div class="controls">
                  <input class="span6 " type="text" placeholder="Disabled input here..." disabled/="" name = "storylink" />
                  <span class="help-inline">Some hint here</span></div>
              </div>
              <div class="control-group">
                <label class="control-label">Mô tả truyện</label>
                <div class="controls">
                  <textarea rows="6" class="span6 popovers" data-trigger="hover" data-content="Mô tả ngắn gọn cho truyện" data-original-title="Mô tả" name="storyinfo"></textarea>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Trang Truyện</label>
                <div class="controls">
                  <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="input-append">
                      <div class="uneditable-input"><i class="icon-file fileupload-exists"></i><span class="fileupload-preview"></span></div>
                      <span class="btn btn-file"><span class="fileupload-new">Chọn File</span><span class="fileupload-exists">Thay đổi</span>
                      <input type="file" class="default" />
                      </span> <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Gỡ bỏ</a>
					</div>
                  </div>
                  <a href="javascript:;" class="btn add-more-file" style="margin-bottom:10px">Thêm</a>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Audio</label>
                <div class="controls">
                  <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="input-append">
                      <div class="uneditable-input"><i class="icon-file fileupload-exists"></i><span class="fileupload-preview"></span></div>
                      <span class="btn btn-file"><span class="fileupload-new">Chọn File</span><span class="fileupload-exists">Thay đổi</span>
                      <input type="file" class="default" />
                      </span> <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Gỡ bỏ</a>
					</div>
                  </div>
                  <a href="javascript:;" class="btn add-more-file" style="margin-bottom:10px">Thêm</a>
                </div>
              </div>

              <div class="form-actions">
                <input type="submit" name="submit" class="btn btn-success" value="Tạo">
                <button type="button" class="btn">Hủy</button>
              </div>
              </form>
            </div>
          </div>
        </div>
      </div>
	</div>