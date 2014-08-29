<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCLeftMenu.ascx.cs" Inherits="BEC_Vuongquocvuive.ADMIN.UCModules.UCLeftmenu" %>


        <ul class="sidebar-menu">
            <li class="has-sub ">
	        <a href="javascript:;" class=""><span class="icon-box"><i class="icon-book"></i></span>Quản lí Truyện<span class="arrow"></span></a>
            <ul class="sub">
                <li><a class="" href="?ac=story">Danh Sách Truyện</a></li>
                <li><a class="" href="?ac=category">Danh Mục Truyện</a></li>
                <li><a class="" href="?ac=addnewstory">Thêm Mới Truyện</a></li>
            </ul>
            </li>
	        <li class="has-sub">
	        <a href="javascript:;" class=""><span class="icon-box"><i class="icon-play"></i></span>Quản lí Game<span class="arrow"></span></a>
            <ul class="sub">
                <li><a class="" href="?ac=game">Danh Sách Game</a></li>
                <li><a class="" href="?ac=addnewgame">Thêm Mới</a></li>
            </ul>
            </li>
            <li class="has-sub">
	        <a href="javascript:;" class=""><span class="icon-box"><i class="icon-user"></i></span>Quản lí Quản Trị Viên<span class="arrow"></span></a>
            <ul class="sub">
                <li class="active"><a class="" href="?ac=users">Danh Sách Quản Trị Viên</a></li>
                <li><a class="" href="?ac=quyen">Danh sách quyền hạn</a></li>
                <li><a class="" href="?ac=addnewuser">Thêm Mới</a></li>
            </ul>
            </li>
        </ul>
