<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>Hóa Đơn Tính Tiền</title>
 <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
<div class="col-md-12 col-sm-12 col-xs-12 well">
    <div class="x_panel">
        <div class="x_title">
            <h2>HÓA ĐƠN THANH TOÁN</h2>
            <ul class="nav navbar-right panel_toolbox"></ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <br />
            <div class="form-horizontal form-label-left">
				<input type="hidden" value= "${phong.ID }" id="idphong"/>
                <div class="form-group col-sm-3 col-md-3 ">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Tên phòng</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                         <input type="text" class="form-control" disabled value="${param.tenphong}" />
                    </div>
                </div>
                <div class="form-group col-sm-3 col-md-3">
                    <label class="control-label col-md-5 col-sm-5 col-xs-5">Khách hàng</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <label  class="form-control">${result_tinhtien.tenKH }</label>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>

<div class="col-md-12 col-sm-12 col-xs-12 well">
    <div class="x_panel">
        
        <div class="x_content">
        <div class="form-horizontal form-label-left">
            <div id="ct_hoadondv" class="well"></div>
            
            <div class="form-group col-sm-3 col-md-3 " hidden = "true">
	            <label class="control-label col-md-5 col-sm-5 col-xs-5">Karaoke</label>
	            <div class="form-group col-sm-3 col-md-3 ">
	                 <label id ="soGio" class="control-label col-md-5 col-sm-5 col-xs-5" >${result_tinhtien.soGio}</label>
	       		</div>
	       		
	       		<div class="form-group col-sm-3 col-md-3 ">
	                 <label class="control-label col-md-5 col-sm-5 col-xs-5" >100.000</label>
	       		</div>
	       		
	       		<div class="form-group col-sm-3 col-md-3 ">
	                 <label id = "tienphong" class="control-label col-md-5 col-sm-5 col-xs-5" >${result_tinhtien.tienPhong}</label>
	       		</div>
       		<br/>
       			<div class="form-group col-sm-3 col-md-3 ">
	                 <label class="control-label col-md-5 col-sm-5 col-xs-5" >Tổng tiền</label>
	       		</div>
	       		
	       		
	       		<div class="form-group col-sm-3 col-md-3 ">
	                 <label id = "tongtien" class="control-label col-md-5 col-sm-5 col-xs-5" >${result_tinhtien.tongTien}</label>
	       		</div>
       		</div>         
	            
       		
        </div>       
        
    	</div>
	</div>
</div>
<input id="btnback" type="button" class=" btn btn-primary btn-round" value="Quay lai" onclick="location.href='/uit/getAllPhong'"/>
<input type="hidden" id= "xxx" value="${param.idhoadondv}"/>
<div id='xhide'></div>
</body>
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> 
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/moment.js" />"></script> 
<script src="<c:url value="/resources/js/supersaiyan.js" />"></script> 
<script type="text/javascript">
$.ajax({
	url:'/uit/dsct_hoadondv_toan?idhoadondv='+ $("#xxx").val(),
	method:'get',
	success:function(data){
		$('#ct_hoadondv').html(data);
		//table
		var x='<tr>'
			+'<th>Tiền hát Karaoke</th>'
		    + '<th>'+thoigian+'</th>'
		    + '<th>'+'100.000'+'</th>'
		    + '<th>'+tienphong.format(0,3)+'</th>'
			+ '</tr>';
		$("table tr:last").after(x);
		 x='<tr>'
			+'<th>TỔNG TIỀN</th>'
		    + '<th></th>'
		    + '<th></th>'
		    + '<th>'+tongtien.format(0,3) + " đồng"+'</th>'
			+ '</tr>';
		$("table tr:last").after(x);
		//  
	}
});

Number.prototype.format = function(n, x) {
    var re = '\\d(?=(\\d{' + (x || 3) + '})+' + (n > 0 ? '\\,' : '$') + ')';
    return this.toFixed(Math.max(0, ~~n)).replace(new RegExp(re, 'g'), '$&.');
};

var x = document.getElementById("soGio").innerHTML;
var gio = parseInt(x);
var phut = parseInt((x-gio)*60);
var thoigian ='';
if(gio!=0)
	thoigian = gio + " giờ " + phut + " phút"
else 
	thoigian = phut + " phút";

var tienphong = Math.round(parseInt(document.getElementById("tienphong").innerHTML)/10)*10;
//document.getElementById("tienphong").innerHTML = tienphong.format(0,3);

                      

var tongtien = Math.round(parseInt(document.getElementById("tongtien").innerHTML)/10)*10;
//document.getElementById("tongtien").innerHTML = tongtien.format(0,3) + " đồng";

</script>
</html>