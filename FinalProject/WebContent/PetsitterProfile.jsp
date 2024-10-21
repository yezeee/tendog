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
<title>PetsitterProfile.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<%
	String postCd = request.getParameter("postCd");
	String selectedS = (String)request.getAttribute("selectedS");
%>
<script type="text/javascript">
	
	$().ready(function()
	{
		$("#applyBtn").click(function()
		{
			$(location).attr("href", "petsittingapply.action?postCd=<%=postCd%>");
		});
		
		$("#selectBtn").click(function()
		{
			//alert($('input[name="select"]:checked').val());
			$(location).attr("href", "selectpetsitter.action?postCd=<%=postCd%>&sCd=" + $('input[name="select"]:checked').val());
		});
		
		$("#<%=selectedS%>").css({"background-color":"#BBBBBB", "color":"white"});
		
	});

</script>

<script type="text/javascript">

//팝업 윈도우즈
function winOpen(element) 
{
     var sCd = element.getAttribute('data-code');
     var theURL = "petsitterinfopopup.action?sCd=" + sCd;
     var flag = "left=10,top=10,width=700,height=1000,toolbar=no,menubar=no,status=no,scrollbars=no,resizable=no";
     window.open(theURL, 'PopupWindow', flag);
}

</script>

</head>
<body>

<c:import url="Menu.jsp"></c:import>

<!--  <div class="main" style="background-color: white; display: flex; justify-content: space-between;"> -->
 <div class="main" style="background-color: white;">
	<br><br>
	<!-- 
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
		<br><br>		
		<a href="petsittinglist.action" style="font-weight: 800; line-height: 150%;">공고보기&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
		<a href="applypetsittingform.action" style="font-weight: 500;">신청하기&nbsp;&nbsp;&nbsp;&nbsp;</a>		
	</div> 
	-->
	<div class="right" style="width: 60%; display: flex; justify-content: space-around; margin: 0 auto;">
		<div style="width: 15%;"></div>
		<div style="width: 70%; display: flex; justify-content: space-around; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); margin-top: 50px; margin-bottom: 70px; padding-top: 30px; padding-bottom: 30px;">
			<div style="width: 10%;"></div>
			<div style="width: 30%; text-align: center;">
				<img src="images/user_m.png" style="width: 80%;">	
			</div>
			<div style="width: 5%;"></div>
			<div style="width: 50%; text-align: left; padding-top: 15px; padding-bottom: 15px; font-size: 14pt;">
				<span style="font-weight: 600;">이름</span><br>
				김예지<br><br>
				<span style="font-weight: 600;">나이</span><br>
				20세<br><br>
				<span style="font-weight: 600;">등급</span><br>
				C<br><br />
				<span style="font-weight: 600;">시급</span><br>
				10000원<br><br />
				<span style="font-weight: 600;">근무가능요일</span><br>
				월, 목, 토<br><br />
				<span style="font-weight: 600;">돌봄가능크기</span><br>
				소형견, 중형견<br><br />
				<span style="font-weight: 600;">보유자격증</span><br>
				자격증1<br>
				자격증2<br>
			</div>
		</div>
		<div style="width: 15%;"></div>
	</div>
	<div style="width: 10%;"></div>
</div>
 
 
<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>