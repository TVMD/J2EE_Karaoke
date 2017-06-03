<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Payments List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    

</head>
<body class=".container-fluid">
                <form action="searchPayment">
                    <div class="row form-group">
                      <div class="col-md-6">
	                      		<div class="row">
	                      			<div class="col-md-4" align="right">
	                      				Nhập nội dung chi
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
	                       				<div class='input-group date' id='datetimepicker1'>
						                    <input class="form-control" required="required" id="fromDate" name="fromDate" placeholder="Format: yyyy-mm-dd"/>
						                    <span class="input-group-addon">
						                        <span class="glyphicon glyphicon-calendar"></span>
						                    </span>
						                </div>
	                       			</div>
	                      		</div><br>
	                      		<div class="row">
	                      			<div class="col-md-4" align="right">
	                      				Đến ngày
	                      			</div>
	                      			<div class="col-md-8">
	                       				<div class='input-group date' id='datetimepicker2'>
						                    <input class="form-control" required="required" id="toDate" name="toDate" placeholder="Format: yyyy-mm-dd"/>
						                    <span class="input-group-addon">
						                        <span class="glyphicon glyphicon-calendar"></span>
						                    </span>
						                </div>
	                       			</div>
	                      		</div><br>
                       </div>
                      <div class="col-md-6">
                      	<div class="col-md-6">
                      		<input class="btn btn-success" type='submit' value='Tìm'/>
                      	</div>
                      	<div class="col-md-6">
                      		<div class="row">
	                      			
	                      			<div class="col-md-12">
		                      		<div align = "right">
		                      			<input type="button" id="create" class="btn btn-primary" value="Thêm Phiếu chi" onclick="window.location='/uit/createPayment'"/>
			                 		</div>
		                 		</div>
	                 		</div>
                 		</div>
                      </div>
                      
                    </div>
                </form>
                
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
	<script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>
    
    <script type="text/javascript">
        function submitPaymentForm() {             
            
            // getting the payment form values
            var noidung = $('#searchNoiDung').val().trim();
            var fromDate =$('#fromDate').val();
            var toDate =$('#toDate').val();
    
            if(noidung == "") {
                alert('Nhập vào nội dung cần tìm');
                $('#noidung').focus();
                return false;
            }
    
            return true;
        };  
        
        $(function () {
            $('#datetimepicker1').datetimepicker();
            $('#datetimepicker2').datetimepicker();
        });
        
        $('.date').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss'
        });

    </script>
    
</body>
</html>