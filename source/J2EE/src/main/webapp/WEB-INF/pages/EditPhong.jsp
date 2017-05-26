<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Quản lý phòng</title>
 <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
<div class="col-md-12 col-sm-12 col-xs-12 well">
    <div class="x_panel">
        <div class="x_title">
            <h3>Thông tin phòng</h3>
            <ul class="nav navbar-right panel_toolbox"></ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <br />
            <div class="form-horizontal form-label-left">
            	<input type="hidden" id="idphong"/>
            	
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Tên phòng</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input id="tenphong" type="text" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Giá ngày</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input id="giangay" type="text" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Giá đêm</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input id="giadem" type="text" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                   <a class="btn btn-warning btn-sm">
      							<span class="glyphicon glyphicon-ok"></span>
   		  		  	</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="dsphong">hihi</div>
</body>
  <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> 
  <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    
  <script>   
  </script>
</html>