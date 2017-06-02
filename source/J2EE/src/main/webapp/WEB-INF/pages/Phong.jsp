<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Quản lý Karaoke</title>
 <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
 <style type="text/css">
        .hihi {
            margin: 20px;
            background: desktop;
            color:red;
        }
        .row{
        	margin:10px;
        	padding-left: 10%;
        	padding-right: 10%;
        }
        .btn{
        	width: 250px;
        	height: 100px;
        }
   </style>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<h2 style='padding-left:40% ; padding-right:20%;'>Danh sách phòng</h2>
<div>
	<div class='row'>
	<c:forEach items="${phongList}" var="pmt" >
          <div class="animated flipInY col-md-3 hihi" >
          <c:if test="${pmt.statusID == 1}">
          <a  class="btn btn-warning btn-lg phong1" id= "${pmt.ID}">
      		<span class="glyphicon glyphicon-pause"></span> <c:out value="${pmt.ten}"/>
   		  </a>
          </c:if>
          
          <c:if test="${pmt.statusID == 0}">
          <a  class="btn btn-success btn-lg phong0" id= "${pmt.ID}">
      		<span class="glyphicon glyphicon-play"></span> <c:out value="${pmt.ten}"/>
   		  </a>
          </c:if>
          </div>
     </c:forEach>
	</div>
</div>
<a style="width:80px;height:30px; margin-left:95%;" href="google.com" class="btn btn-success btn-sm">
      		<span class="glyphicon glyphicon-home"></span> Home
   		  </a>
</body>
  <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> 
  <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    
  <script>
   $('.hihi').on('click',function(){
   	   var theid = $(this).children('a').attr('id');
	   window.location='/uit/ct_phong?id='+theid;
   });
   
  </script>
</html>