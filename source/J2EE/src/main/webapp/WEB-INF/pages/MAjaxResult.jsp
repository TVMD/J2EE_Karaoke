<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	 <c:if test="${thuephong != null }">

                    <label class="control-label col-md-3 col-sm-3 col-xs-3">TG bắt đầu</label>
                    <div class="col-sm-9 col-xs-9 col-md-9 ">
                        <input id='tgstart' type="text" value="${thuephong.TGStart}" />
                    </div>

	 </c:if>
	 
	  <c:if test="${hoadondv != null }">
		 <input id="idhoadondv" type="hidden" value="${hoadondv.ID}" />
		 <input id="idthuephong" type="hidden" value="${hoadondv.ID_ThuePhong}" />
	 </c:if>
</body>
</html>