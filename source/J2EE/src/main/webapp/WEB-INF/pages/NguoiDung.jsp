<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Quản lý người dùng</title>
 <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
 <style>
 	.notsave{
 		background:grey;
 	}
 </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="bodynek">
<div class="col-md-12 col-sm-12 col-xs-12 well">
    <div class="x_panel">
        <div class="x_title">
            <h3>Thông tin người dùng</h3>
            <ul class="nav navbar-right panel_toolbox"></ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <br />
            <form action="creaupuser" method="post">
            <div class="form-horizontal form-label-left">
            	<input name="id" type="hidden" id="idphong" value="0"/>
            	
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Mã đăng nhập</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="madangnhap" id="madangnhap" type="text" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Mật khẩu</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="matkhau" id="matkhau" type="password" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Họ tên</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="hoten" id="hoten" type="text" class="form-control" />
                    </div>
                </div>
                
                 <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Email</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="email" id="mail" type="text" class="form-control" />
                    </div>
                </div>
                
                 <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">SĐT</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="sodt" id="sodt" type="text" class="form-control" />
                    </div>
                </div>
                
                   <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Nhóm quyền</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <select name="manhomquyen">
                        	<option value="2">User</option>
                        	<option value="1">Admin</option>
                        </select>
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

	<c:if test="${dsnguoidung != null }">
	 	 <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                    	<th style="display:none;"/>
                        <th>Mã đăng nhập</th>
                        <th>Họ tên</th>
                        <th>Email</th>
                    	<th>Số ĐT</th>
                        <th>Nhóm quyền</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${dsnguoidung}" var="item">
                        <tr >
                        	<th style="display:none;"><c:out value="${item.ID}"/></th>
                            <th>
                           <c:out value="${item.maDangNhap}"/>
                            </th>
                          
                            <th >
                           <c:out value="${item.hoTen}"/>
							</th>
                            <th >
                          <c:out value="${item.email}"/> 
                            </th> 
                              <th >
                          <c:out value="${item.soDT}"/> 
                            </th> 
                              <th >
	                          	<c:if test="${item.maNhomQuyen == 1}">Admin </c:if>
	                          	<c:if test="${item.maNhomQuyen ==2}">User </c:if>
                            </th> 
                            
                            <th id="editrow" >
                            	 <a id="editphong" onclick="edituser(this);" class="btn btn-success btn-sm">
      								<span class="glyphicon glyphicon-pencil"></span>
   		  		  				</a> 
                            </th>
                           <th id="deleterow">
                            	 <a onclick="deleteuser(this);"  class="btn btn-warning btn-sm">
      								<span class="glyphicon glyphicon-remove"></span>
   		  		  				</a> 
                            </th>                         
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
	 </c:if>
	 </div>
</body>
  <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> 
  <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
  <script src="<c:url value="/resources/js/md5.js" />"></script>
    
  <script>   
   function submitclick(e){
	   if($("#madangnhap").val()=="" || $("#matkhau").val()==""){
 			e.preventDefault();
 			alert("Vui lòng nhập đủ thông tin mã người dùng và mật khẩu");
 		}
 		else{
 			$("#matkhau").val(MD5($("#matkhau").val()));	
 		}
   }
   
  
  	$("#submit").on("click",function(e){
  		if($("#madangnhap").val()=="" || $("#matkhau").val()==""){
  			e.preventDefault();
  			alert("Vui lòng nhập đủ thông tin mã người dùng và mật khẩu");
  		}
  		else{
  			$("#matkhau").val(MD5($("#matkhau").val()));	
  		}
  	})
  	
  	function deleteuser(caller){
  		window.location = "deleteuser?id="+$(caller).parent().siblings().eq(0).html();
  	}
  	
  	function edituser(caller){
  		var iduser = $(caller).parent().siblings().eq(0).html();
  		
  		var x = {
				   id:iduser
		   }
  		
  		$.ajax({
			   url: 'preupdate',
			   data: x,
			   type: 'POST',
			   success :function(data){
				  $("#bodynek").html(data);
					$("#submit").on("click",submitclick(e));
			   }
			 });
  	}
  	
  </script>
</html>