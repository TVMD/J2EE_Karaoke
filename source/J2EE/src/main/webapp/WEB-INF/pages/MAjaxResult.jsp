<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	 <c:if test="${thuephong != null }">

                    <label class="control-label col-md-3 col-sm-3 col-xs-3">TG bắt đầu</label>
                    <div class="col-sm-9 col-xs-9 col-md-9 ">
                        <input id='tgbatdau' type="text" class="form-control" disabled value="${thuephong.TGStart}" />
                    </div>

	 </c:if>
	 
	  <c:if test="${hoadondv != null }">
		 <input id="idhoadondv" type="hidden" value="${hoadondv.ID}" />
		 <input id="idthuephong" type="hidden" value="${hoadondv.ID_ThuePhong}" />
	 </c:if>
	 
	 <c:if test="${dshang != null }">
		<div class="form-group">
        <label class="col-xs-3 control-label">Chọn đồ uống</label>
        <div class="col-xs-5 selectContainer">
            <select class="form-control" name="dshang">
             	<option value="">Chọn đồ uống</option>
                 <c:forEach items="${dshang}" var="item">
                      <option value="${item.ID}"><c:out value="${item.ten}"/></option>
                 </c:forEach>
            </select>
        </div>
   		 </div>
	 </c:if>
	 
	 <c:if test="${dscthoadondv != null }">
	 	 <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                    	<th style="display:none;"/>
                        <th>Tên món</th>
                        <th>Số lượng</th>
                        <th>Đơn giá</th>
                        <th>Thành tiền</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${dscthoadondv}" var="item">
                        <tr>
                        	<th style="display:none;"><c:out value="${item.ID_Hang}"/></th>
                            <th><c:out value="${item.tenHang}"/></th>
                            <th>
                            	<input onkeypress='return event.charCode >= 48 && event.charCode <= 57' id="soluong_ct" value= <c:out value="${item.soLuong}"/> disabled="true"/>
                            	 <a class="btn btn-success btn-sm hidden">
      								<span class="glyphicon glyphicon-ok"></span>
   		  		  				</a> 
                            </th>
                            <th><c:out value="${item.donGia}"/></th>
                            <th><c:out value="${item.thanhTien}"/></th> 
                            <th id="editrow">
                            	 <a onclick="btneditcthoadon(this);" class="btn btn-success btn-sm">
      								<span class="glyphicon glyphicon-pencil"></span>
   		  		  				</a> 
                            </th>
                           <th id="deleterow">
                            	 <a onclick="btndelcthoadon(this);"  class="btn btn-warning btn-sm">
      								<span class="glyphicon glyphicon-remove"></span>
   		  		  				</a> 
                            </th>                         
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
	 </c:if>
	 
	 <c:if test="${dsphong != null }">
	 	 <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                    	<th style="display:none;"/>
                        <th>Tên phòng</th>
                        <th style="display:none;"/>
                        <th>Giá ngày</th>
                        <th>Giá đêm</th>
                        <th style="display:none;"/>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${dsphong}" var="item">
                        <tr >
                        	<th style="display:none;"><c:out value="${item.ID}"/></th>
                            <th ondblclick="$(this).children().dblclick();">
                            <input  value=<c:out value="${item.ten}"/> class="input-editable" disabled="true"/>
                            </th>
                            <th style="display:none;"><c:out value="${item.statusID}"/></th>
                            <th  ondblclick="$(this).children().dblclick();">
                             <input  value=<c:out value="${item.giaNgay}"/> class="input-editable" disabled="true"/>
							</th>
                            <th ondblclick="$(this).children().dblclick();">
                             <input  value=<c:out value="${item.giaDem}"/> class="input-editable" disabled="true"/>
                            </th> 
                            <th id="editrow" >
                            	 <a id="editphong" onclick="editphong(this);" class="btn btn-success btn-sm">
      								<span class="glyphicon glyphicon-pencil"></span>
   		  		  				</a> 
                            </th>
                           <th id="deleterow">
                            	 <a onclick="deletephong(this);"  class="btn btn-warning btn-sm">
      								<span class="glyphicon glyphicon-remove"></span>
   		  		  				</a> 
                            </th>                         
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
	 </c:if>
	
	<c:if test="${nguoidung !=null }"> 
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
            	<input name="id" type="hidden" id="idphong" value="${nguoidung.ID}"/>
            	
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Mã đăng nhập</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="madangnhap" id="madangnhap" type="text" class="form-control"
                        	value="${nguoidung.maDangNhap }" />
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Mật khẩu</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="matkhau" id="matkhau" type="password" class="form-control" 
                        value="${nguoidung.matKhau }"/>
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Họ tên</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="hoten" id="hoten" type="text" class="form-control"
                        value="${nguoidung.hoTen }" />
                    </div>
                </div>
                
                 <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Email</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="email" id="mail" type="text" class="form-control" 
                        value="${nguoidung.email }"/>
                    </div>
                </div>
                
                 <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">SĐT</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="sodt" id="sodt" type="text" class="form-control" 
                        value="${nguoidung.soDT }"/>
                    </div>
                </div>
                
                   <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Nhóm quyền</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <select name="manhomquyen" selected="${nguoidung.maNhomQuyen }">
                        	<option value="2" <c:if test="${nguoidung.maNhomQuyen==2 }"> selected </c:if>>User</option>
                        	<option value="1" <c:if test="${nguoidung.maNhomQuyen==1 }"> selected </c:if>>Admin</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group col-sm-3 col-md-3">
   		  		  	<a onclick="$('#submit').click();" class="btn btn-success btn-sm">
      							<span class="glyphicon glyphicon-ok"></span>
   		  		  	</a>
   		  		  	<input id = "submit" type="submit" hidden="true" onclick="submitclick(e);"/> 
   		  		 </div>
            </div>
            </form>
           </c:if>
</body>
</html>