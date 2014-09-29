<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Update_Info.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.Update_Info" %>
<asp:MultiView ID="UpdateInfo" runat="server">
    <asp:View ID="Step1" runat="server">
        view 1
        <%--<section id="change-info" >
          <div class="wrapper-block">
            <h3 class="title-block">Thông tin tài khoản</h3>
            <div class="content-block">
            <em>Bạn hãy hoàn thành thông tin cá nhân để nhận được 1000 vàng vào tài khoản!</em>
            <ul class="step-block">
            	<li class="step active">
                	<h3>1</h3>
                    <p>Thông tin cơ bản</p>
                </li>
                <li class="step">
                	<h3>2</h3>
                    <p>Thông tin liên hệ</p>
                </li>
                <li class="step">
                	<h3>3</h3>
                    <p>Địa chỉ</p>
                </li>
            </ul>
			<ul class="form">
                <li>
                    <label>Họ Tên*: </label>
                    <asp:TextBox ID="txtHoten" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"  
                ControlToValidate="txtHoten" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtHoten" Display="Dynamic" 
                        ErrorMessage="Không Được dùng kí tự đặc biệt" ValidationExpression="\w+" ForeColor="Red"></asp:RegularExpressionValidator>
                </li>
                <li>
                    <label>Ngày sinh*: </label>
                    <asp:TextBox ID="txtngaysinh" class="tb-register" runat="server" Width="250px"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNgaysinh" ForeColor="Red"
ErrorMessage="Ngày Sinh không hợp lệ." SetFocusOnError="True" Display="Dynamic" ValidationExpression="(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])"></asp:RegularExpressionValidator>
                </li>
				<li>
                    <label>Giới tính: </label>
                     <asp:DropDownList ID="ddlgender" runat="server" class="gender" >
                        <asp:ListItem Value="1" Text="Nam"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Nữ"></asp:ListItem>
                     </asp:DropDownList>
                </li>
                <li>
                     <asp:Button class="btn btn-register btn-right" ID="btnNext" runat="server" 
                        Text="Bước Tiếp" onclick="btnNext_Click"/>
                </li>
              </ul>
             </div>
          </div>
        </section>	 --%>
        <asp:Button class="btn btn-register btn-right" ID="btnNext" runat="server" 
                        Text="Bước Tiếp" onclick="btnNext_Click"/>
    </asp:View>
    

    <asp:View ID="Step2" runat="server">
       <%-- <section id="change-info" >
          <div class="wrapper-block">
            <h3 class="title-block">Thông tin tài khoản</h3>
            <div class="content-block">
            <em>Bạn hãy hoàn thành thông tin cá nhân để nhận được 1000 vàng vào tài khoản!</em>
            <ul class="step-block">
            	<li class="step">
                	<h3>1</h3>
                    <p>Thông tin cơ bản</p>
                </li>
                <li class="step active">
                	<h3>2</h3>
                    <p>Thông tin liên hệ</p>
                </li>
                <li class="step">
                	<h3>3</h3>
                    <p>Địa chỉ</p>
                </li>
            </ul>
			<ul class="form">
				<li>
                    <label>Email*: </label>
                    <asp:TextBox ID="txtEmail" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Địa chỉ email không chính xác!" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </li>

                <li>
                    <label>Số điện thoại: </label>
                     <asp:TextBox ID="txtphone" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" 
                ControlToValidate="txtphone" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtPhone"   Display="Dynamic"
                        ErrorMessage="Điện thoại không đúng định dạng" ValidationExpression="^\d{8,10}" ForeColor="Red"></asp:RegularExpressionValidator>
                </li>
                <li>
                     <asp:Button class="btn btn-register btn-left" ID="Button2" runat="server" 
                        Text="Bước Trước" onclick="Button2_Click" CausesValidation="False"/>
                     <asp:Button class="btn btn-register btn-right" ID="Button1" runat="server" 
                        Text="Bước Tiếp" onclick="Button1_Click"/>
                </li>
              </ul>
             </div>
          </div>
        </section>	  --%>
        view 2
         <asp:Button class="btn btn-register btn-left" ID="Button2" runat="server" 
                        Text="Bước Trước" onclick="Button2_Click" CausesValidation="False"/>
                     <asp:Button class="btn btn-register btn-right" ID="Button1" runat="server" 
                        Text="Bước Tiếp" onclick="Button1_Click"/>
    </asp:View>


    <asp:View ID="Step3" runat="server">
        <section id="change-info" >
          <div class="wrapper-block">
            <h3 class="title-block">Thông tin tài khoản</h3>
            <div class="content-block">
            <em>Bạn hãy hoàn thành thông tin cá nhân để nhận được 1000 vàng vào tài khoản!</em>
            <ul class="step-block">
            	<li class="step">
                	<h3>1</h3>
                    <p>Thông tin cơ bản</p>
                </li>
                <li class="step ">
                	<h3>2</h3>
                    <p>Thông tin liên hệ</p>
                </li>
                <li class="step active">
                	<h3>3</h3>
                    <p>Địa chỉ</p>
                </li>
            </ul>
			<ul class="form">
				<li>
                    <label>Địa chỉ: </label>
                    <asp:TextBox ID="txtAddress" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtAddress" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
                <li>
                    <label>Phường/Xã: </label>
                    <asp:TextBox ID="txtPhuong" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                    
                </li>
                 <li>
                    <label>Quận/Huyện: </label>
                    <asp:TextBox ID="txtHuyen" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                    
                </li>
                <li>
                    <label>Tỉnh/Thành phố: </label>
                    <asp:TextBox ID="txtThanhPho" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                    
                </li>
                 <li>
                    <label>Trường: </label>
                    <asp:TextBox ID="txtTruong" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                </li>
                 <li>
                    <label>Lớp: </label>
                    <asp:TextBox ID="txtLop" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                   
                 </li>
                <li>
                    <asp:Button class="btn btn-register btn-left" ID="Button3" runat="server" 
                        Text="Bước Trước" onclick="Button3_Click"/>
                        <asp:Button class="btn btn-register btn-right" ID="btnchange" runat="server" 
                        Text="Thay Đổi" onclick="btnchange_Click"/>
                   
                </li>
              </ul>
             </div>
          </div>
        </section>	  
    </asp:View>
</asp:MultiView>