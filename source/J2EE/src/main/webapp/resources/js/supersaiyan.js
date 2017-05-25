
//General: 

$(function () {

});
var interval = null; // functionhandle of time counting


//Chi tiet phong

function textsoluong(){
	$("#-1").on('click',function(){
		var x= $("#sl").val();
		$("#sl").val(x =="" || x==0 ?0:x-1);
	});
	$("#1").on('click',function(){
		var x= $("#sl").val();
		$("#sl").val(x ==""?1:x-(-1));
	});
}

function ajaxphong(){
		$.ajax({
			method:'get',
			url:'/uit/thuephong?idphong='+ $('#idphong').val(),
			success:function(data){
				$('#divtgbatdau').html(data);
				$('#tgbatdau').val(moment($('#tgbatdau').val()).format("DD-MM-YYYY HH:mm:ss"));
				settinterval();
			}
		});
}

function ctphong_ready() {
   
	textsoluong();
	
    $("#btnback").on("click", function () {
    	window.location='/uit/getAllPhong'
    });
    if($("#divtgbatdau").html().indexOf("input")<0){
    	$("#divsogio").hide();
    }
    else{
    	settinterval();
    }
    
    $("#btntinhtien").on("click",function(){
    	location.href='/uit/tinhtien?hoadon='+$("#idhoadondv").val();
    })
    
    
	ajaxphong();
	
	$.ajax({
		url:'/uit/hoadondv?idphong='+$('#idphong').val(),
		method:'get',
		success:function(data){
			$('#xhide').html(data);
			
			ajaxct_hoadondv();
		}
	});
	
	$.ajax({
		url:'/uit/dshang',
		method:'get',
		success:function(data){
			$('#cbbhang').html(data);
		}
	});
	
	//event
	$("#btnbatdau").on("click",btnbatdauclick);
};

function ajaxct_hoadondv(){
	$.ajax({
		url:'/uit/dsct_hoadondv?idhoadondv='+ $("#idhoadondv").val(),
		method:'get',
		success:function(data){
			$('#ct_hoadondv').html(data);
		}
	});
}

function settinterval(){
	clearInterval(interval); //xoa cai cu di
    interval = setInterval(function() {
        var now = moment().format('DD/MM/YYYY HH:mm:ss');
        var then = $("#tgbatdau").val();
        $("#sogio").val(moment.utc(moment(now, "DD/MM/YYYY HH:mm:ss").diff(moment(then, "DD/MM/YYYY HH:mm:ss"))).format("HH:mm:ss"));
   }, 1000);
}

function btnbatdauclick() {
   var x = {
		   idphong:$('#idphong').val()
		   ,tgbatdau: moment().format('YYYY/MM/DD HH:mm:ss')
   }
		
   $.ajax({
	   url: '/uit/batdau',
	   data: x,
	   type: 'POST',
	   success: function(){
		  window.location.reload();
	   }
	 });
   
}

function btntinhtienclick() {
   
    var tg = $("#tgbatdau").val();
    $("#tgbatdau").val(moment(tg, "DD/MM/YYYY HH:mm:ss").format("DD/MM/YYYY HH:mm:ss"));
    $("#btnbatdau").prop("disabled", false);
    $("#btntinhtien").prop("disabled", true);
    clearInterval(interval);
}

function btnaddcthoadon(){
	var midhang =$('select[name=dshang]').val();
	var sl = $('#sl').val();
	var midhoadon = $('#idhoadondv').val();
	
	if(midhang=="" || midhang == "" || midhoadon===undefined){
		alert('getout!');
		return;
	}
	
	var x = {
			   idhoadon:midhoadon
			   ,idhang:midhang
			   ,soluong:sl
	   }
			
   $.ajax({
		   url: '/uit/addct_hoadondv',
		   data: x,
		   type: 'POST',
		   success: function(){
			   ajaxct_hoadondv()
		   },
		   error: function(){
			   alert("Có vẻ bạn đã hết loại hàng này!");
		   }
		 });
}

function btndelcthoadon(caller){
	var midhang =$(caller).parent().siblings().eq(0).html();
	var midhoadon = $('#idhoadondv').val();
	
	if(midhang===undefined || midhoadon===undefined){
		alert('getout!');
		return;
	}
	
	var x = {
			   idhoadon:midhoadon
			   ,idhang:midhang
	   }
			
   $.ajax({
		   url: '/uit/deletect_hoadondv',
		   data: x,
		   type: 'POST',
		   success: function(x){
			   ajaxct_hoadondv()
		   },
		   error: alert("Something is just not right.")
		 });
}
function btneditcthoadon(caller){
	var x = $(caller).parent().siblings().eq(2);
	
	var midhang =$(caller).parent().siblings().eq(0).html();
	var midhoadon = $('#idhoadondv').val();
	
	if(midhang===undefined || midhoadon===undefined){
		alert('getout!');
		return;
	}
	
	x.children('input').attr("disabled",false)
		.on("keydown",function(event){
			
			if(event.which==13){
				var x = {
						 idhoadon:midhoadon
						   ,idhang:midhang
						   ,soluong:$(this).val()
				}
				$.ajax({
					   url: '/uit/updatect_hoadondv',
					   data: x,
					   type: 'POST',
					   success: function(x){
						   ajaxct_hoadondv()
					   }
					 });
			}
		});
	x.children('a').removeClass('hidden')
		.on("click",function(){
			
			var x = {
					 idhoadon:midhoadon
					   ,idhang:midhang
					   ,soluong:$(this).siblings('input').val()
			}
			 $.ajax({
				   url: '/uit/updatect_hoadondv',
				   data: x,
				   type: 'POST',
				   success: function(x){
					   ajaxct_hoadondv()
				   }
				 });
			 
		});
}