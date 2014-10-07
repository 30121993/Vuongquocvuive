<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .nav-list-ava input[type="file"]{
    -webkit-appearance:none; 
    position:absolute;
    top:0; left:0;
    opacity:0; 
}
   .nav-list-ava #FileUpload1{
    -webkit-appearance:none; 
    position:absolute;
    top:0; left:0;
    opacity:0; 
}
.nav-list-ava
{
         position:relative;
    }
</style>
    <style >
        .choose_file{
    position:relative;
}
.choose_file input[type="file"]{
    -webkit-appearance:none; 
    position:absolute;
    top:0; left:0;
    opacity:0; 
}
    </style>
</head>
<body>
     <form id="form1" runat="server" enctype="multipart/form-data">
        <asp:ScriptManager ID= "SM1" runat="server"></asp:ScriptManager>
<%--
        <asp:UpdatePanel runat="server" id="UpdatePanel" updatemode="Conditional">
        <Triggers>
            <asp:AsyncPostBackTrigger controlid="UpdateButton2" eventname="Click" />
        </Triggers>
            <ContentTemplate>
                <asp:Label runat="server" id="DateTimeLabel1" />
                <asp:Button runat="server" id="UpdateButton1" onclick="UpdateButton_Click" text="Update" />               
            </ContentTemplate>
        </asp:UpdatePanel>


        <asp:UpdatePanel runat="server" id="UpdatePanel1" updatemode="Conditional">           
            <ContentTemplate>
                <asp:Label runat="server" id="DateTimeLabel2" />
                <asp:Button runat="server" id="UpdateButton2" onclick="UpdateButton_Click" text="Update" />
            </ContentTemplate>
        </asp:UpdatePanel>
     <asp:FileUpload ID="FileUpload1" runat="server" />
        <a href="#" id="abc" onclick="Button1_Click" runat="server">âsdasd</a>
     <asp:Button ID="Button1" runat="server" Text="PassRandom" onclick="Button1_Click" />
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     <asp:FileUpload ID="FileUpload2" runat="server" />

     <asp:Button ID="Button2" runat="server" Text="UPload" />
--%>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>



     <div>
        <div>
           
            <asp:Timer ID="timer1" runat="server" Interval="1000" OnTick="timer1_tick"></asp:Timer>
        </div>
        <div>
            <asp:UpdatePanel id="updPnl" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label ID="lblTimer" runat="server"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="timer1" EventName ="tick" />
                </Triggers>
            </asp:UpdatePanel>
</div>
     </div>
     <div class="nav-list-ava">
                <a href="javascript:;"><asp:FileUpload  runat="server" onchange="this.form.submit();" ID="fuFile"></asp:FileUpload><i class="fa fa-camera"></i> Chọn ảnh tải lên</a>
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
         
     </div>
     <asp:Image ID="Image1" runat="server" ImageUrl="~/Presentation/abc/quynh.jpg"/>
    </form>
</body>
</html>
