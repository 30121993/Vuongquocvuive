<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="payment-history.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.payment_history" %>


        <section id="payment-history" class="block-left-item">
          <div class="wrapper-block">
            <h3 class="title-block">Lịch sử giao dịch</h3>
            <div class="content-block"> 
              <script>
                  $(function () {
                      $("#from").datepicker({
                          defaultDate: "+1w",
                          changeMonth: true,
                          changeYear: true,
                          numberOfMonths: 1,
                          onClose: function (selectedDate) {
                              $("#to").datepicker("option", "minDate", selectedDate);
                          }
                      });
                      $("#to").datepicker({
                          defaultDate: "+1w",
                          changeMonth: true,
                          changeYear: true,
                          numberOfMonths: 1,
                          onClose: function (selectedDate) {
                              $("#from").datepicker("option", "maxDate", selectedDate);
                          }
                      });
                  });
                </script>
              <div class="filter">
                <p>Thời gian giao dịch: </p>
                <p>
                  <label for="from">Từ</label>
                  <input type="text" id="from" name="from">
                  <label for="to">Đến</label>
                  <input type="text" id="to" name="to">
                  <input type="submit" value="Tìm kiếm" class="btn btn-refill"/>
                </p>
              </div>
              <ul>
                <li class="head-table row-table">
                  <ul>
                    <li style="width:15%">Thời gian</li>
                    <li style="width:40%">Giao dịch</li>
                    <li style="width:20%">Số Xu</li>
                    <li style="width:20%">Còn lại</li>
                  </ul>
                </li>
                <li class="row-table">
                  <ul>
                    <li style="width:15%">1/8/2014</li>
                    <li style="width:40%">Nạp Xu</li>
                    <li style="width:20%">+1000</li>
                    <li style="width:20%">1000</li>
                  </ul>
                </li>
                <li class="row-table">
                  <ul>
                    <li style="width:15%">2/8/2014</li>
                    <li style="width:40%">Chơi game</li>
                    <li style="width:20%">-100</li>
                    <li style="width:20%">900</li>
                  </ul>
                </li>
                <li class="row-table">
                  <ul>
                    <li style="width:15%">3/8/2014</li>
                    <li style="width:40%">Học Online</li>
                    <li style="width:20%">-100</li>
                    <li style="width:20%">800</li>
                  </ul>
                </li>
				<li class="row-table">
                  <ul>
                    <li style="width:15%">3/8/2014</li>
                    <li style="width:40%">Nạp Xu</li>
                    <li style="width:20%">+1000</li>
                    <li style="width:20%">1800</li>
                  </ul>
                </li>
				<li class="row-table">
                  <ul>
                    <li style="width:15%">3/8/2014</li>
                    <li style="width:40%">Chơi Game</li>
                    <li style="width:20%">-200</li>
                    <li style="width:20%">1600</li>
                  </ul>
                </li>
				<li class="row-table">
                  <ul>
                    <li style="width:15%">4/8/2014</li>
                    <li style="width:40%">Học trực tuyến</li>
                    <li style="width:20%">-300</li>
                    <li style="width:20%">1300</li>
                  </ul>
                </li>
				<li class="row-table">
                  <ul>
                    <li style="width:15%">5/8/2014</li>
                    <li style="width:40%">Nạp Xu</li>
                    <li style="width:20%">+1000</li>
                    <li style="width:20%">2600</li>
                  </ul>
                </li>
				<li class="row-table">
                  <ul>
                    <li style="width:15%">5/8/2014</li>
                    <li style="width:40%">Đọc truyện</li>
                    <li style="width:20%">-100</li>
                    <li style="width:20%">2500</li>
                  </ul>
                </li>
				<li class="row-table">
                  <ul>
                    <li style="width:15%">5/8/2014</li>
                    <li style="width:40%">Chơi game</li>
                    <li style="width:20%">-200</li>
                    <li style="width:20%">2300</li>
                  </ul>
                </li>
				<li class="row-table">
                  <ul>
                    <li style="width:15%">5/8/2014</li>
                    <li style="width:40%">Học trực tuyến</li>
                    <li style="width:20%">-300</li>
                    <li style="width:20%">2000</li>
                  </ul>
                </li>
              </ul>
              <div class="pager">
                <ul>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li class="active"><a href="#">4</a></li>
                </ul>
              </div>
            </div>
          </div>
        </section>