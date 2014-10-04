<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="BEC_Vuongquocvuive.Presentation.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
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
    </form>
</body>
</html>
