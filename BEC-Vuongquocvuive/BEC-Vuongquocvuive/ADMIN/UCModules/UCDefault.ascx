<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCDefault.ascx.cs" Inherits="BEC_Vuongquocvuive.ADMIN.UCModules.UCDefault" %>
<table>
    <tr>
    <td><label>Tổng số lượt truy cập</label></td>
    <td><%=Application["count_visit"].ToString() %></td>
    </tr>
    <tr>
        <td><label>Số người đang online:</label></td>
        <td><%=Session["online"].ToString() %></td>
    </tr>
    <tr>
</table> 