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
</body>
</html>