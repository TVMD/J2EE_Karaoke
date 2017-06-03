<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home</title>
</head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
	.btn {
	 width: 250px;
	  height: 100px ;
	 }
</style>


<body>

<jsp:include page="header.jsp"></jsp:include>
<hr>
<marquee>Karaoke iSing</marquee>
<hr>
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="row">
			<a href="getAllPhong"><input type = "button" class="btn btn-lg btn-primary" value = "Danh sách Phòng"/></a>
			<a href="createPhong"><input type = "button" class="btn btn-lg btn-primary" value = "Thêm Phòng"/></a>
		</div><br>
		<div class="row">
			<a href="getAllPayments"><input type = "button" class="btn btn-lg btn-primary" value = "Danh sách Phiếu chi"/></a>
			<a href="createPayment"><input type = "button" class="btn btn-lg btn-primary" value = "Thêm Phiếu chi"/></a>
		</div><br>
		<div class="row">
			<a href="nhaphang"><input type = "button" class="btn btn-lg btn-primary" value = "Nhập hàng"/></a>
		</div>
	</div>
	<div class="col-md-2"></div>
</div>
</body>
</html>
