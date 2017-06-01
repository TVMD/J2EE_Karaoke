<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Báo cáo doanh thu</title>
 <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
 <style>
 	.notsave{
 		background:grey;
 	}
 </style>
</head>
<body>
<div class="col-md-4">
<form action="bcdoanhthu" method="get">
	<div class="form-group">
        <div class="col-xs-5 selectContainer">
            <select class="form-control" name="thang">
             	<option value="0">Chọn tháng</option>
                 <c:forEach begin="1" end="12" step="1" varStatus="loop">
    				  <option value="${loop.count}"><c:out value="${loop.count}"/></option>
				</c:forEach>
            </select>
            <select class="form-control" name="nam">
             	<option value="0">Chọn năm</option>
                 <c:forEach begin="2000" end="2030" step="1" varStatus="loop">
    				  <option value="${loop.count + 2000}"><c:out value="${loop.count +2000}"/></option>
				</c:forEach>
            </select>
        </div>
   		 </div>
   		 
   		 <input type="submit" value="Xem báo cáo">
</form>
</div>
<div class="col-md-8" <c:if test="${baocao==null }"> style="display: none;" </c:if>>
	<canvas id="myChart" width="50%" height="20%">></canvas>
	<input id= "thu" type="hidden" value="${baocao.doanhThu }"/>
	<input id= "chi" type="hidden" value="${baocao.chiPhi }"/>
</div>
<div class="col-md-8" <c:if test="${baocao!=null }"> style="display: none;" </c:if>>
	<h2>Chọn tháng , năm lại!</h2>
</div>
</body>
  <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> 
  <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
   <script src="<c:url value= "/resources/js/Chart.min.js" />"></script>
  <script>   
  $()
  
  var ctx = document.getElementById('myChart').getContext('2d');
  var chart = new Chart(ctx, {
      // The type of chart we want to create
      type: 'doughnut',

      // The data for our dataset
      data: {
          labels: ["Doanh thu", "Chi phí"],
          datasets: [{
              label: "Doanh thu tháng ",
              backgroundColor: [
                  '#18A15F','#F15A24'
              ],
              borderColor: '#FFFFFF',
              data: [$("#thu").val(),$("#chi").val()],
          }]
      },

      // Configuration options go here
      options: {}
  });
  </script>
</html>