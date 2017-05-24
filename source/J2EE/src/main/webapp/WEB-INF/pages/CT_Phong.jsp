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
<div class="col-md-12 col-sm-12 col-xs-12 well">
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
                <div class="form-group col-sm-4 col-md-4 ">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Tên phòng</label>
                    <div class="col-md-9 col-sm-9 col-xs-9">
                         <input type="text" class="form-control" disabled value="${phong.ten }" />
                    </div>
                </div>
                <div class="form-group col-sm-4 col-md-4">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Khách hàng</label>
                    <div class="col-md-9 col-sm-9 col-xs-9">
                        <input id="tenkh" type="text" class="form-control" />
                    </div>
                </div>
                <div class="form-group col-sm-4 col-md-4" id='divtgbatdau' ></div>   
            </div>
        </div>
    </div>
</div>

<div class="col-md-12 col-sm-12 col-xs-12 well" >
    <div class="x_panel">
        <div class="x_title">
            <h2>Thức uống - Thức ăn</h2>
            <ul class="nav navbar-right panel_toolbox"></ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
        <div class="form-horizontal form-label-left">
            <br />
            <div id='cbbhang' class="col-sm-5 col-md-5"></div>
            
            <div class="form-group col-sm-4 col-md-4">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Số lượng</label>
                    <div class="col-md-9 col-sm-9 col-xs-9">
                        <input id="sl" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57'/>
                    </div>
                </div>       
            
            <div class="form-group col-sm-3 col-md-3">
                  <a style="width:80px;height:30px;" href="google.com" class="btn btn-success btn-sm">
      				<span class="glyphicon glyphicon-ok"></span>
   		  		  </a>      
            </div>
            <br/><br/>
            <div id="ct_hoadondv" class="well">hihi</div>
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
<div id='xhide'></div>
</body>
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> 
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/moment.js" />"></script> 
<script src="<c:url value="/resources/js/supersaiyan.js" />"></script> 
<script type="text/javascript">
	ctphong_ready();
</script>
</html>