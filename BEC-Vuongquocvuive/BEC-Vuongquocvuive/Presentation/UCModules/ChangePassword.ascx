<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.Changer_info_User" %>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<section id="change-info"  style="width: 700px;">

          <div class="wrapper-block" style="width: 650px;">
            <h3 class="title-block">Thay đổi Mật Khẩu</h3>
            <div class="content-block">
			<ul class="form">
                <li>
                    <label>Tên Tài Khoản*: </label>
                    <asp:TextBox ID="txtUserName" class="tb-register" runat="server" Width="250px" Enabled="false"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtUserName" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                </li>
				<li>
                    <label>Mật Khẩu Cũ: </label>
                    <asp:TextBox ID="txtPassword" class="tb-register" runat="server" Width="250px" TextMode="Password"></asp:TextBox> 
                    <asp:Label ID="lblLoiPass" runat="server" Text=""></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" 
                ControlToValidate="txtPassword" ErrorMessage="Lỗi!" ForeColor="Red"></asp:RequiredFieldValidator>
                
                </li>
                <li>
                    <label>Mật Khẩu Mới: </label>
                    <asp:TextBox ID="txtPasswordnew" class="tb-register" runat="server" Width="250px" TextMode="Password"></asp:TextBox> 
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" 
                ControlToValidate="txtPasswordnew" ErrorMessage="Thông tin yêu cầu!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtPasswordnew" Display="Dynamic" 
                        ErrorMessage="Lỗi kí tự đặc biệt" ValidationExpression="\w+"></asp:RegularExpressionValidator>
                         <asp:CustomValidator ID="CustomValidator2" runat="server" Display="Dynamic" 
                        ClientValidationFunction="CheckLength" ControlToValidate="txtPasswordnew" 
                       ErrorMessage="Mật khẩu từ 6-8 ký tự"></asp:CustomValidator>
                </li>
                <li>
                    <label>Nhập lại mật khẩu*: </label>
                    <asp:TextBox ID="txtRePassword" class="tb-register" runat="server" Width="250px" TextMode="Password"></asp:TextBox> 
                     <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPasswordnew" ControlToValidate="txtRePassword" 
                ErrorMessage="Mật khẩu nhập lại không đúng!" ForeColor="Red"></asp:CompareValidator>
                </li>
                <li>
                    <asp:Button class="btn btn-register" ID="btnchangePass" runat="server" 
                        Text="Thay Đổi" onclick="btnchange_Click" style="height: 26px" />
                         
                </li>
                <li>
                    <asp:label ID="lblMsg" text="" runat="server" />
                </li>
              </ul>
             </div>
          </div>
</section>
</ContentTemplate>  
</asp:UpdatePanel>	