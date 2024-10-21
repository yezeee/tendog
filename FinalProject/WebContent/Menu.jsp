<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
</head>
<body>

<!-----------------------------------------
	Menu.jsp
	- 메인 메뉴 뷰(View) 페이지.
	- 로그인 후 접근 페이지의 메뉴.
	- 로그아웃 처리 가능 컨트롤 구성.
 ----------------------------------------->
 
<!-- <div style="background-color: #B27500;"> -->
<br>
<div class="header" style="display: flex; align-items: center; justify-content: space-between;">
	
	<div style="display: flex; align-items: center;">
		&nbsp;&nbsp;&nbsp;&nbsp; 
		<!-- <img src="images/logo.png" style="width: 150px; vertical-align: middle;"> -->
		<img src="images/tendogLogo_IMG.png" style="width: 80px; vertical-align: middle;">
	</div>
	
	<div id="tab" style="display: flex; align-items: center;">
	    <a style="color: #B27500;">홈</a>
	    <a style="color: #B27500;">펫시팅</a>
	    <a style="color: #B27500;">커뮤니티</a>
	    <a href="MyPagePetPartners.jsp" style="color: #B27500;">마이페이지</a>
	</div>
	
	<div style="display: flex; align-items: center;">
		<img src="images/bell.png" style="width: 25px; margin-left: 10px;">
		<img src="images/gear.png" style="width: 25px; margin-left: 10px;">
		<img src="images/user.png" style="width: 30px; margin-left: 10px;">
		&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
</div>
<br>
<!-- </div> -->

</body>
</html>