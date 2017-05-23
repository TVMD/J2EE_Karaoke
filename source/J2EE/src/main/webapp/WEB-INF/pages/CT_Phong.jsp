<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>Phòng</title>
 <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
<div class="col-md-6 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2>Thông tin phòng</h2>
            <ul class="nav navbar-right panel_toolbox"></ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <br />
            <div class="form-horizontal form-label-left">
				<input type="hidden" value= "${phong.ID }" id="idphong"/>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Tên phòng</label>
                    <div class="col-md-9 col-sm-9 col-xs-9">
                        <h3>${phong.ten }</h3> 
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Khách hàng</label>
                    <div class="col-md-9 col-sm-9 col-xs-9">
                        <input id="tenkh" type="text" class="form-control" />
                    </div>
                </div>
                <div class="form-group" id='divtgbatdau' ></div>      
            </div>
        </div>
    </div>
</div>

<div class="col-md-6 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2>Thức uống - Thức ăn</h2>
            <ul class="nav navbar-right panel_toolbox"></ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <br />
            <div class="form-horizontal form-label-left">
                              
			left        
            </div>
        </div>
    </div>
</div>

<div class="col-md-12">
    <div class="x_panel">
        <div class="x_content">
            <div class="form-group">
                <div class="col-md-9 col-md-offset-3">
                    <input id="btnbatdau" type=button value="Bắt đầu"  class="btn btn-round btn-success" 
                    	<c:if test="${phong.statusID==1 }">disabled</c:if>
                    />
                    <input id="btntinhtien" class=" btn btn-round btn-success" type =  'button' value="Tính tiền" 
                    	<c:if test="${phong.statusID==0 }">disabled</c:if>
                    />
                    <input id="btnback" type="button" class=" btn btn-primary btn-round" value="Quay lai" />
                </div>
            </div>
        </div>
    </div>
</div>
<div id='xxx'></div>
</body>
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> 
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/moment.js" />"></script> 
<script src="<c:url value="/resources/js/supersaiyan.js" />"></script> 
<script type="text/javascript">
	ctphong_ready();
	$.ajax({
		url:'/uit/hoadondv?idphong=15',
		method:'get',
		success:function(data){
			$('#xxx').html(data);
		}
	});
</script>
</html>