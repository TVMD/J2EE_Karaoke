<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Ranga Reddy">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Payment Information</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    
    <link href="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    
    
    <style type="text/css">
        .myrow-container{
            margin: 20px;
        }
    </style>
</head>
<body class=".container-fluid">
<jsp:include page="header.jsp"></jsp:include>
    <div class="container myrow-container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Payment Details
                </h3>
            </div>
            <div class="panel-body">
                <form:form id="paymentRegisterForm" cssClass="form-horizontal" modelAttribute="payment" method="post" action="savePayment">
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"> <form:label path="NgayLap" >Ngày Lập</form:label> </div>
                        <div class="col-xs-6">
                            <form:hidden path="ID" value="${paymentObject.ID}"/>
                            
							<div class='input-group date' id='datetimepicker1'>
			                    <form:input cssClass="form-control" required="required" placeholder="Format: yyyy-mm-dd" path="NgayLap" value="${paymentObject.getNgayLap()}"/>
                        
			                    <span class="input-group-addon">
			                        <span class="glyphicon glyphicon-calendar"></span>
			                    </span>
			                </div>
                            
                       <!--     <form:input cssClass="form-control" required="required" placeholder="Format: yyyy-mm-dd" path="NgayLap" value="${paymentObject.getNgayLap()}"/>
                       -->  
                        </div>
                    </div>
    
                    <div class="form-group">
                        <form:label path="NoiDung" cssClass="control-label col-xs-3">Nội dung</form:label>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" id="noidung" required="required" placeholder="Nhập nội dung chi" path="NoiDung" value="${paymentObject.getNoiDung()}"/>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="TongTien">Tổng tiền</form:label></div>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" required="required" placeholder="Nhập tổng tiền" id="TongTien" onkeypress="return event.charCode >= 48 && event.charCode <= 57"  path="TongTien" value="${paymentObject.getTongTien()}"/>
                        </div>
                    </div>
    
    				
                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="GhiChu">Ghi chú</form:label></div>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" type="text" placeholder="Ghi chú" path="GhiChu" value="${paymentObject.getGhiChu()}"/>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-4">
                            </div>
                            <div class="col-xs-4">
                                <input type="submit" id="savePayment" class="btn btn-primary" value="Save" onclick="return submitPaymentForm();"/>
                            	<input type="button" id="cancel" class="btn btn-warning" value="Cancel" onclick="window.location='/uit/getAllPayments'"/>
                            </div>
                            <div class="col-xs-4">
                           </div>
                        </div>
                    </div>
    
                </form:form>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
	<script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>
    
    
    <script type="text/javascript">
        function submitPaymentForm() {             
            
            // getting the payment form values
            var noidung = $('#noidung').val().trim();
            var tongtien = $('#TongTien').val();
    
            if(tongtien <= 0) {
                alert('Số tiền phải lớn hơn 0');
                $('#TongTien').focus();
                return false;
            }
    
            return true;
        };  
        
        $(function () {
            $('#datetimepicker1').datetimepicker();
        });
        
        $('.date').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss'
        });

    </script>
</body>
</html>