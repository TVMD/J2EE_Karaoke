<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Payments List</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">
        .myrow-container {
            margin: 20px;
        }
    </style>

</head>
<img src="../../resources/images/cover.png"/>
<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                <div align="left"><b>Danh sách Phiếu chi</b> </div>
                <div align="right"><a href="createPayment">Add New Payment</a></div>
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty paymentList}">
                There are no Payments
            </c:if>
            <c:if test="${not empty paymentList}">   
            
                <form action="searchPayment">
                    <div class="row form-group">
                      <div class="col-md-6">
	                      <div class="col-md-6">Tìm kiếm theo nội dung chi:</div>
	                      <div class="col-md-6">
	                       	<input type="text" class="form-control" name="searchNoiDung" id="searchNoiDung"> 
	                      </div>
                       </div>
                      <div class="col-md-6">
                      	<div class="col-md-6">
                      		<input class="btn btn-success" type='submit' value='Search'/>
                      	</div>
                      	<div class="col-md-6">
                      		<div align = "right">
                      		<input type="button" id="create" class="btn btn-primary" value="Create" onclick="window.location='/uit/createPayment'"/>
                 		</div>
                 		</div>
                      </div>
                      
                    </div>
                </form>
                <hr>
                                
                <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                        <th>Mã</th>
                        <th>Ngày lập phiếu</th>
                        <th>Nội dung chi</th>
                        <th>Tổng tiền chi</th>
                        <th>Ghi chú</th>
                        <th>Chỉnh sửa</th>
                        <th>Xóa</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${paymentList}" var="pmt">
                        <tr>
                            <th><c:out value="${pmt.ID}"/></th>
                            <th><c:out value="${pmt.ngayLap}"/></th>
                            <th><c:out value="${pmt.noiDung}"/></th>
                            <th><c:out value="${pmt.tongTien}"/></th> 
                            <th><c:out value="${pmt.ghiChu}"/></th>
                            <th><a href="editPayment?id=<c:out value='${pmt.ID}'/>">Edit</a></th>
                            <th><a href="deletePayment?id=<c:out value='${pmt.ID}'/>">Delete</a></th>                          
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <%-- <script src="<c:url value="/resources/js/jquery-2.1.3.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
     --%>

</body>
</html>