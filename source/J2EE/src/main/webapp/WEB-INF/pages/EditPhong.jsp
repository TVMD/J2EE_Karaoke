<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Quản lý phòng</title>
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
            <h3>Thông tin phòng</h3>
            <ul class="nav navbar-right panel_toolbox"></ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <br />
            <form action="creaup" method="post">
            <div class="form-horizontal form-label-left">
            	<input name="id" type="hidden" id="idphong" value="0"/>
            	
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Tên phòng</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="ten" id="tenphong" type="text" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Giá ngày</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="giangay" id="giangay" type="text" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Giá đêm</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="giadem" id="giadem" type="text" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
   		  		  	<a onclick="$('#submit').click();" class="btn btn-success btn-sm">
      							<span class="glyphicon glyphicon-ok"></span>
   		  		  	</a>
   		  		  	<input id = "submit" type="submit" hidden="true"/> 
   		  		 </div>
            </div>
            </form>
        </div>
    </div>
</div>
<div id="dsphong">hihi</div>
</body>
  <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> 
  <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    
  <script>   
  	$.ajax({
  		url:"ajax_getallPhong",
  		method:"post",
  		success:function(data){
  			$('#dsphong').html(data);
  			
  			$(".input-editable").on("dblclick",function(){
  				$(this).attr("disabled",false).parent().siblings().eq(4)
  					.children().removeClass("btn-success").addClass('btn-danger');
  			})
  		}
  	});
  	
  	function deletephong(caller){
  		var idphong =$(caller).parent().siblings().eq(0).html();
  		
  		if(idphong===undefined){
  			alert('getout!');
  			return;
  		}
  		
  		var x = {
  				   id:idphong
  		   }
  				
  	   $.ajax({
  			   url: 'deletePhong',
  			   data: x,
  			   type: 'POST',
  			   
  			   complete :function(){
  				   location.reload();
  			   }
  			 });
  	}
  	
  	function editphong(caller){
  		var idphong = $(caller).parent().siblings().eq(0).html();
  		var tenphong = $(caller).parent().siblings().eq(1).children().val();
  		var status = $(caller).parent().siblings().eq(2).html()
  		var giangayx = $(caller).parent().siblings().eq(3).children().val();
  		var giademx = $(caller).parent().siblings().eq(4).children().val();
  		
  		var x = {
				   id:idphong,
				   statusid:status,
				   ten:tenphong,
				   giangay:giangayx,
				   giadem:giademx
		   }
  		 $.ajax({
			   url: 'creaup',
			   data: x,
			   type: 'POST',
			   complete :function(){
				   location.reload();
			   }
			 });
  		
  	}
  </script>
</html>