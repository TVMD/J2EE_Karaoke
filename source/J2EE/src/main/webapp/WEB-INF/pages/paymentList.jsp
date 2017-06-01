<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh sách Phiếu chi</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">
        .myrow-container {
            margin: 20px;
            width: 97%;
            max-width: 97%;
        }
        
    </style>

</head>
<body class=".container-fluid">
<jsp:include page="header.jsp"></jsp:include>
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                <div align="left"><b>Danh sách Phiếu chi</b> </div>
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty paymentList}">
                There are no Payments
            </c:if>
            <c:if test="${not empty paymentList}">
             <!-- 
                <form action="searchPayment">
                    <div class="row form-group">
                      <div class="col-md-6">
	                      		<div class="row">
	                      			<div class="col-md-4" align="right">
	                      				Tìm kiếm theo nội dung chi
	                      			</div>
	                      			<div class="col-md-8">
	                       				<input type="text" class="form-control" name="searchNoiDung" id="searchNoiDung">
	                       			</div>
	                      		</div><br>
	                      		<div class="row">
	                      			<div class="col-md-4" align="right">
	                      				Từ ngày
	                      			</div>
	                      			<div class="col-md-8">
	                       				<input type="date" class="form-control" name="fromDate" id="fromDate">
	                       			</div>
	                      		</div><br>
	                      		<div class="row">
	                      			<div class="col-md-4" align="right">
	                      				Đến ngày
	                      			</div>
	                      			<div class="col-md-8">
	                       				<input type=date step=7 min=2014-09-08 class="form-control" name="toDate" id="toDate">
	                       			</div>
	                      		</div><br>
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
                 -->
                 
                 <jsp:include page="paymentSearch.jsp"></jsp:include>
                 
                <hr>
                                
                <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                        <th>Mã</th>
                        <th width="15%">Ngày lập phiếu</th>
                        <th width="30%">Nội dung chi</th>
                        <th width="10%">Tổng tiền chi</th>
                        <th width="25%">Ghi chú</th>
                        <th width="10%">Chỉnh sửa</th>
                        <th width="10%">Xóaa</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${paymentList}" var="pmt">
                        <tr>
                            <td><c:out value="${pmt.ID}"/></td>
                            <td><c:out value="${pmt.ngayLap}"/></td>
                            <td><c:out value="${pmt.noiDung}"/></td>
                            <td><c:out value="${pmt.tongTien}"/></td> 
                            <td><c:out value="${pmt.ghiChu}"/></td>
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