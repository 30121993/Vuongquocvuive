<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListStatus.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.ListStatus" %>

 <section id="block-post-status" class="block-status">
          <textarea class="tb-status" placeholder="Cập nhật trạng thái"></textarea>
          <div class="more-opt">
            <select id="post-type" class="opt-post">
              <option value="">Bạn bè</option>
              <option value="" selected>Công khai</option>
            </select>
            <input type="submit" class="btn btn-post" value="Đăng"/>
          </div>
        </section>
        <script type="text/javascript">
            $(function () {
                $("#post-type").selectbox();
            });
            $(document).ready(function (e) {
                $('.show-cmt').click(function (e) {
                    $(this).parents('.block-status').find('.wrapp-cmt').toggleClass('show-cmt');
                    $("#block-list-status").getNiceScroll().resize();
                });
            });
		</script> 
        <!--end block post status-->
        <section id="block-list-status"> 
          <!--Begin status item-->
          <div class="block-status">
            <div class="status">
              <div class="author-post">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <h3 class="author-name"><a href="#">Tên người đăng</a></h3>
                <em>16:40</em> </div>
              <!--End author post-->
              <div class="status-content"> Nội dung bài đăng </div>
            </div>
            <div class="more-info"> <span><i class="fa fa-heart-o"></i> 10 </span><a href="javascript:;">Thích</a> <a href="javascript:;"  class="show-cmt"><i class="fa fa-pencil-square-o"></i> Bình luận</a> </div>
            <!--end status-->
            <div class="wrapp-cmt">
              <div class="comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <h3 class="author-name"><a href="#">Người trả lời</a></h3>
                  nội dung phản hồi </div>
                <div class="cmt-info"><em>8:45</em> <a href="#">Thích</a></div>
              </div>
              <!--End comment-->
              <div class="post-comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <textarea class="txt-post-cmt" placeholder="Nội dung comment"></textarea>
                  <input type="submit" class="btn btn-send-cmt" value="Gửi phản hồi"/>
                </div>
              </div>
            </div>
            <!--End post comment--> 
          </div>
          <!--End status item--> 
          
          <!--Begin status item-->
          <div class="block-status">
            <div class="status">
              <div class="author-post">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <h3 class="author-name"><a href="#">Tên người đăng</a></h3>
                <em>16:40</em> </div>
              <!--End author post-->
              <div class="status-content"> Nội dung bài đăng </div>
            </div>
            <div class="more-info"> <span><i class="fa fa-heart-o"></i> 10 </span><a href="javascript:;">Thích</a> <a href="javascript:;"  class="show-cmt"><i class="fa fa-pencil-square-o"></i> Bình luận</a> </div>
            <!--end status-->
            <div class="wrapp-cmt">
              <div class="comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <h3 class="author-name"><a href="#">Người trả lời</a></h3>
                  nội dung phản hồi </div>
                <div class="cmt-info"><em>8:45</em><a href="#">Thích</a></div>
              </div>
              <!--End comment-->
              <div class="post-comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <textarea class="txt-post-cmt" placeholder="Nội dung comment"></textarea>
                  <input type="submit" class="btn btn-send-cmt" value="Gửi phản hồi"/>
                </div>
              </div>
            </div>
            <!--End post comment--> 
          </div>
          <!--End status item--> 
          <!--Begin status item-->
          <div class="block-status">
            <div class="status">
              <div class="author-post">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava2.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <h3 class="author-name"><a href="#">Tên người đăng</a></h3>
                <em>16:40</em> </div>
              <!--End author post-->
              <div class="status-content"> Nội dung bài đăng </div>
            </div>
            <!--end status-->
            <div class="more-info"> <span><i class="fa fa-heart-o"></i> 10 </span><a href="javascript:;">Thích</a> <a href="javascript:;"  class="show-cmt"><i class="fa fa-pencil-square-o"></i> Bình luận</a> </div>
            <div class="wrapp-cmt">
              <div class="comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <h3 class="author-name"><a href="#">Người trả lời</a></h3>
                  nội dung phản hồi </div>
                <div class="cmt-info"><em>8:45</em><a href="#">Thích</a> </div>
              </div>
              <!--End comment-->
              <div class="post-comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <textarea class="txt-post-cmt" placeholder="Nội dung comment"></textarea>
                  <input type="submit" class="btn btn-send-cmt" value="Gửi phản hồi"/>
                </div>
              </div>
            </div>
            <!--End post comment--> 
          </div>
          <!--End status item--> 
          
          <!--Begin status item-->
          <div class="block-status">
            <div class="status">
              <div class="author-post">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava3.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <h3 class="author-name"><a href="#">Tên người đăng</a></h3>
                <em>16:40</em> </div>
              <!--End author post-->
              <div class="status-content"> Nội dung bài đăng </div>
            </div>
            <!--end status-->
            <div class="more-info"> <span><i class="fa fa-heart-o"></i> 10 </span><a href="javascript:;">Thích</a> <a href="javascript:;"  class="show-cmt"><i class="fa fa-pencil-square-o"></i> Bình luận</a> </div>
            <div class="wrapp-cmt">
              <div class="comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <h3 class="author-name"><a href="#">Người trả lời</a></h3>
                  nội dung phản hồi </div>
                <div class="cmt-info"><em>8:45</em><a href="#">Thích</a></div>
              </div>
              <!--End comment-->
              <div class="post-comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <textarea class="txt-post-cmt" placeholder="Nội dung comment"></textarea>
                  <input type="submit" class="btn btn-send-cmt" value="Gửi phản hồi"/>
                </div>
              </div>
            </div>
            <!--End post comment--> 
          </div>
          <!--End status item--> 
          <!--Begin status item-->
          <div class="block-status">
            <div class="status">
              <div class="author-post">
                <div class="user-ava">
                  <div class="img-frame"> <img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <h3 class="author-name"><a href="#">Tên người đăng</a></h3>
                <em>16:40</em> </div>
              <!--End author post-->
              <div class="status-content"> Nội dung bài đăng </div>
            </div>
            <!--end status-->
            <div class="more-info"> <span><i class="fa fa-heart-o"></i> 10 </span><a href="javascript:;">Thích</a> <a href="javascript:;"  class="show-cmt"><i class="fa fa-pencil-square-o"></i> Bình luận</a> </div>
            <div class="wrapp-cmt">
              <div class="comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <h3 class="author-name"><a href="#">Người trả lời</a></h3>
                  nội dung phản hồi </div>
                <div class="cmt-info"><em>8:45</em><a href="#">Thích</a></div>
              </div>
              <!--End comment-->
              <div class="post-comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <textarea class="txt-post-cmt" placeholder="Nội dung comment"></textarea>
                  <input type="submit" class="btn btn-send-cmt" value="Gửi phản hồi"/>
                </div>
              </div>
            </div>
            <!--End post comment--> 
          </div>
          <!--End status item--> 
          
          <!--Begin status item-->
          <div class="block-status">
            <div class="status">
              <div class="author-post">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava4.jpg" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <h3 class="author-name"><a href="#">Tên người đăng</a></h3>
                <em>16:40</em> </div>
              <!--End author post-->
              <div class="status-content"> Nội dung bài đăng </div>
            </div>
            <!--end status-->
            <div class="more-info"> <span><i class="fa fa-heart-o"></i> 10 </span><a href="javascript:;">Thích</a> <a href="javascript:;"  class="show-cmt"><i class="fa fa-pencil-square-o"></i> Bình luận</a> </div>
            <div class="wrapp-cmt">
              <div class="comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <h3 class="author-name"><a href="#">Người trả lời</a></h3>
                  nội dung phản hồi </div>
                <div class="cmt-info"><em>8:45</em><a href="#">Thích</a></div>
              </div>
              <!--End comment-->
              <div class="post-comment">
                <div class="user-ava">
                  <div class="img-frame"><img src="images/ava1.png" alt="Ảnh đại diện" title="Ảnh đại diện"/></div>
                </div>
                <div class="content-cmt">
                  <textarea class="txt-post-cmt" placeholder="Nội dung comment"></textarea>
                  <input type="submit" class="btn btn-send-cmt" value="Gửi phản hồi"/>
                </div>
              </div>
            </div>
            <!--End post comment--> 
          </div>
          <!--End status item--> 
          
        </section>