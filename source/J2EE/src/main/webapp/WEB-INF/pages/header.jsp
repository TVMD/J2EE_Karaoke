<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>header</title>
<style>
 .fit {
 max-width: 100%;
 }
</style>
</head>
<body>

<center><a href="index.html">
<img class="fit" width="1500" src="resources/images/cover.png"/>
</a>
</center>
<nav class="navbar  navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">Karaoke iSing</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.html">Home</a></li>
      <li>
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Quản lý phiếu chi
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="getAllPayments">Danh sách phiếu chi</a></li>
          <li><a href="createPayment">Thêm phiếu chi</a></li>
        </ul>
       </li>
      <li>
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Quản lý phòng
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="getAllPhong">Danh sách phòng</a></li>
          <li><a href="createPhong">Thêm phòng</a></li>
        </ul>
       </li>
      <li><a href="bcdoanhthux">Biểu đồ thu/chi</a></li>
      <li><a href="nhaphang">Nhập hàng</a></li>
      <li><a href="user">Quản lý người dùng</a></li>
      <li align="right"><a href="logout">Log out</a></li>
    </ul>
  </div>
</nav>
</body>
</html>