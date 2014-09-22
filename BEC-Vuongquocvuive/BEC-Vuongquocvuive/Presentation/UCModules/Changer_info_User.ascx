<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Changer_info_User.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.Changer_info_User" %>

<section id="change-info" >
          <div class="wrapper-block">
            <h3 class="title-block">Thay đổi thông tin tài khoản</h3>
            <div class="content-block">
			<ul class="form">
                <li>
                    <label>Họ Tên*: </label>
                    <asp:TextBox ID="txtHoten" class="tb-register" runat="server" Width="250px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtHoten" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
                <li>
                    <label>Tên Tài Khoản*: </label>
                    <asp:TextBox ID="txtUserName" class="tb-register" runat="server" Width="250px" Enabled="false"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtUserName" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
				<li>
                    <label>Mật Khẩu*: </label>
                    <asp:TextBox ID="txtPassword" class="tb-register" runat="server" Width="250px" TextMode="Password"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
                <li>
                    <label>Nhập lại mật khẩu*: </label>
                    <asp:TextBox ID="txtRePassword" class="tb-register" runat="server" Width="250px" TextMode="Password"></asp:TextBox> 
                     <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtRePassword" 
                ErrorMessage="Mật khẩu nhập lại không đúng!" ForeColor="Red"></asp:CompareValidator>
                </li>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtphone" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
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
                    <label>Ngày sinh*: </label>       
                    <asp:TextBox ID="txtngaysinh" class="tb-register" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtngaysinh" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
				<li>
                    <label>Giới tính: </label>
                     <asp:DropDownList ID="ddlgender" runat="server" class="gender" >
                        <asp:ListItem Value="1" Text="Nam"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Nữ"></asp:ListItem>
                     </asp:DropDownList>
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
                    <asp:Button class="btn btn-register" ID="btnchange" runat="server" 
                        Text="Thay Đổi" onclick="btnchange_Click"/>
                        
                    <asp:Button class="btn btn-reset" ID="btnreset" runat="server" Text="Hủy Bỏ" 
                        OnClientClick="this.form.reset();return false;" onclick="btnreset_Click" />
                </li>
                <li>
                    <asp:label ID="txtThongBao" text="" runat="server" />
                </li>
              </ul>
             </div>
          </div>
</section>	