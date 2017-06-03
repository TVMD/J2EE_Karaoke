<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Nhập hàng</title>
 <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
 <style>
 	.notsave{
 		background:grey;
 	}
 </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="col-md-12 col-sm-12 col-xs-12 well">
    <div class="x_panel">
        <div class="x_title">
            <h3>Thông tin hóa đơn nhập</h3>
            <ul class="nav navbar-right panel_toolbox"></ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <br />
            <div class="form-horizontal form-label-left">
            	<input name="idhoadon" type="hidden" id="idhoadon" value="${idhoadon}"/>
            	
                <div class="form-group col-sm-6 col-md-6">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Ngày lập</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <label id="ngaylap"></label>
                    </div>
                </div>
        </div>
    </div>
</div>
 </div>
 
 <div class="col-md-12 col-sm-12 col-xs-12 well">
    <div class="x_panel">
        <div class="x_title">
            <h3>Thông tin chi tiết nhập hàng</h3>
            <ul class="nav navbar-right panel_toolbox"></ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <br />
            <div class="form-horizontal form-label-left">
            	
                <div class="form-group col-sm-6 col-md-6">
                		<label class="control-label col-md-5 col-sm-5 col-xs-5">Hàng</label>
                		<input type="hidden" value='0'/>
                        <div class="selecthang" id="selecthang" name="selecthang"></div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Số lượng</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input id="soluong" type="text" class="form-control"  onkeypress='return event.charCode >= 48 && event.charCode <= 57'/>
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
   		  		  	<a onclick="themctnhaphang();" class="btn btn-success btn-sm">
      							<span class="glyphicon glyphicon-ok"></span>
   		  		  	</a>
   		  		 </div>
            </div>
        </div>
    </div>
</div>

<div id="dsctnhaphang"></div>

<input type="button" onclick="tinhtien()" value="Nhập"/>
</body>
  <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> 
  <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
  <script src="<c:url value="/resources/js/md5.js" />"></script>
   <script src="<c:url value="/resources/js/moment.js" />"></script> 
  <script>   
   
  	function deleteuser(caller){
  		window.location = "deleteuser?id="+$(caller).parent().siblings().eq(0).html();
  	}
  	
  	 $.ajax({
		   url: 'dshang',
		   type: 'get',
		   success :function(data){
			  $(".selecthang").html(data);
			  $(".chondouonglb").remove();
		   }
		 });
	
	$("#ngaylap").html(moment().format("DD-MM-YYYY"));
	
	function themctnhaphang(){
		var x ={
				id:'0',
				idhoadon:$("#idhoadon").val(),
				idhang:$('select[name=dshang]').val(),
				soluong:$("#soluong").val()
		}
		
		$.ajax({
			   url: 'createupnhaphang',
			   data:x,
			   type: 'post',
			   success :function(data){
				  $("#dsctnhaphang").html(data);
				  
				  $.ajax({
					   url: 'dshang',
					   type: 'get',
					   success :function(data){
						  $(".selecthang").html(data);
						  $(".chondouonglb").remove();
						  $("select").each(function(index){
							  var x= $(this).parents("div").siblings("input").val();
							  $(this).val(x);
						  });
					   }
					 });
			   }
			 });
	}
	
	function editctnhaphang(caller){
		var idx = $(caller).parent().siblings().eq(0).html();
  		var idhoadonx = $("#idhoadon").val();
  		var idhangx = $(caller).parent().siblings().eq(1).children("div").children("div").children("div").children("select").val();
  		var soluongx = $(caller).parent().siblings().eq(2).children("input").val();
  		
  		var x = {
				   id:idx
				   ,idhoadon:idhoadonx
				   ,idhang:idhangx
				   ,soluong:soluongx
		   }
  		
  		$.ajax({
			   url: 'createupnhaphang',
			   data:x,
			   type: 'post',
			   success :function(data){
				  $("#dsctnhaphang").html(data);
				  
				  $.ajax({
					   url: 'dshang',
					   type: 'get',
					   success :function(data){
						  $(".selecthang").html(data);
						  $(".chondouonglb").remove();
						  $("select").each(function(index){
							  var x= $(this).parents("div").siblings("input").val();
							  $(this).val(x);
						  });
					   }
					 });
			   }
			 });
	}
	
	function deletectnhaphang(caller){
		var idx = $(caller).parent().siblings().eq(0).html();
		var idhoadonx = $("#idhoadon").val();
  		var x = {
  				   id:idx
  				   ,idhoadon:idhoadonx
  		   }
  				
  	   $.ajax({
  			   url: 'deletectnhaphang',
  			   data: x,
  			   type: 'POST',
  			 	success :function(data){
  			 	$("#dsctnhaphang").html(data);
  			 	
				   $.ajax({
					   url: 'dshang',
					   type: 'get',
					   success :function(data){
						  $(".selecthang").html(data);
						  $(".chondouonglb").remove();
						  $("select").each(function(index){
							  var x= $(this).parents("div").siblings("input").val();
							  $(this).val(x);
						  });
					   }
					 });
  			   }
  			 });
	}
	
	function tinhtien(){
		var idhoadonx = $("#idhoadon").val();
  		var x = {
  				   idhoadon:idhoadonx
  		   }
  				
  	   $.ajax({
  			   url: 'tinhtienhoadonnhap',
  			   data: x,
  			   type: 'POST',
  			 	success :function(data){
  			 	$("body").html(data);
  			   }
  			 });
	}
  </script>
</html>