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
<title>CareGuide.jsp</title>
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
		<div style="width: 70%; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); margin-top: 50px; margin-bottom: 70px; padding-top: 70px; padding-bottom: 50px; font-family: 'Cafe24Ssurround'; text-align: center;">
			<img src="images/tendogIMG_B.png" style="width: 80px;"><br><br>
			<span style="font-family: 'Cafe24Ssurround'; font-size: 20pt;">통계 결과</span><br><br>
			<span style="font-family: 'Pretendard'; font-size: 16pt;"><span style="font-family: 'Pretendard'; font-size: 16pt; font-weight: 700;">보리</span>와 같은 <span style="font-family: 'Pretendard'; font-size: 16pt; font-weight: 700;">말티즈</span> 견종에 대한 통계 결과입니다.</span><br><br>
			<br>
			<hr style="border: 1px solid #F2F2F2; width: 90%;">
			<br>
			<div style="font-family: 'Pretendard'; font-size: 16pt;">
				<span style="font-size: 16pt; font-weight: 700;">사료</span><br><br>
				<div style="display: flex; justify-content: space-around;">	
					<div style="width: 40%;"></div>	
					<div style="width: 7%; text-align: right;">
						<span style="font-size: 14pt; font-weight: 700;">1위</span><br>
						<span style="font-size: 14pt; font-weight: 700;">2위</span><br>				
						<span style="font-size: 14pt; font-weight: 700;">3위</span><br>					
					</div>		
					<div style="width: 5%;">	
					</div>				
					<div style="width: 18%; text-align: left;">
						로얄캐닌<br>
						힐스<br>						
						뉴트로<br>				
					</div>		
					<div style="width: 30%;"></div>			
				</div>
			</div>
			<br>
			<hr style="border: 1px solid #F2F2F2; width: 90%;">
			<br>
			<div style="font-family: 'Pretendard'; font-size: 16pt;">
				<span style="font-size: 16pt; font-weight: 700;">영양제</span><br><br>
				<div style="display: flex; justify-content: space-around;">	
					<div style="width: 40%;"></div>	
					<div style="width: 7%; text-align: right;">
						<span style="font-size: 14pt; font-weight: 700;">1위</span><br>
						<span style="font-size: 14pt; font-weight: 700;">2위</span><br>				
						<span style="font-size: 14pt; font-weight: 700;">3위</span><br>					
					</div>		
					<div style="width: 5%;">	
					</div>				
					<div style="width: 25%; text-align: left;">
						뉴트라맥스 <span style="color: gray; font-size: 12pt;">&nbsp;관절</span><br>
						퓨리나 <span style="color: gray; font-size: 12pt;">&nbsp;유산균</span><br>						
						닥터바이 <span style="color: gray; font-size: 12pt;">&nbsp;기관지</span><br>				
					</div>		
					<div style="width: 23%;"></div>			
				</div>
			</div>
			<br>
			<hr style="border: 1px solid #F2F2F2; width: 90%;">
			<br>
			<div style="font-family: 'Pretendard'; font-size: 16pt;">
				<span style="font-size: 16pt; font-weight: 700;">일일 산책량</span><br><br>
				<span style="font-size: 14pt; color: gray;">평균</span> 80분
			</div>
			<br>
			<hr style="border: 1px solid #F2F2F2; width: 90%;">
			<br><br>
			<button type="button" class="performBtn" value="${perform_cd}" style="border: none; background-color: #F2F2F2; border-radius: 30px; width: 150px; font-weight: 600;"><br>뒤로가기<br><br></button>
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