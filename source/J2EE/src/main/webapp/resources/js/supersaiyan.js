
//General: 

$(function () {

});


//Chi tiet phong
function ctphong_ready() {
   
    $("#btnback").on("click", function () {
    	window.location='/uit/getAllPhong'
    });
    
};

var interval = null; // functionhandle of time counting

function btnbatdauclick() {
    var tg = $("#tgbatdau").val();
    $("#tgbatdau").val(moment(tg,"DD/MM/YYYY HH:mm:ss").format("DD/MM/YYYY HH:mm:ss"));
    $("#btnbatdau").prop("disabled", true);
    $("#btntinhtien").prop("disabled", false);
    clearInterval(interval); //xoa cai cu di
    interval = setInterval(function() {
        var now = moment().format('DD/MM/YYYY HH:mm:ss');
        var then = $("#tgbatdau").val();
        $("#sogio").val(moment.utc(moment(now, "DD/MM/YYYY HH:mm:ss").diff(moment(then, "DD/MM/YYYY HH:mm:ss"))).format("HH:mm:ss"));
    }, 1000);
}

function btntinhtienclick() {
   
    var tg = $("#tgbatdau").val();
    $("#tgbatdau").val(moment(tg, "DD/MM/YYYY HH:mm:ss").format("DD/MM/YYYY HH:mm:ss"));
    $("#btnbatdau").prop("disabled", false);
    $("#btntinhtien").prop("disabled", true);
    clearInterval(interval);
}