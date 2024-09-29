<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	// 자기 자신 페이지로부터 데이터 수신
	String sYear = request.getParameter("year");
	String sMonth = request.getParameter("month");
	
	// Calendar 객체 생성
	Calendar cal = Calendar.getInstance();
	
	// 현재 년, 월 확인
	int nowYear = cal.get(Calendar.YEAR);			
	int nowMonth = cal.get(Calendar.MONTH)+1;		
	
	// 표시할 달력의 년, 월 구성 → 페이지 최초 요청을 감안한 코드
	int selectYear = nowYear;
	int selectMonth = nowMonth;
	
	// 페이지에 대한 요청이 최초 요청이 아닐 경우
	// → Line 9 ~ 10 을 통해 수신한 데이터로 년, 월 구성
	if (sYear != null || sMonth != null)
	{
		selectYear = Integer.parseInt(sYear);
		selectMonth = Integer.parseInt(sMonth);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AccumulatedAmountPopUp.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	function formChange(obj)
	{
		obj.submit();
	}

	$().ready(function()
	{
		$(".submitBtn").click(function()
		{
			$(location).attr("href", "accumulatedamount.action?sCd=${sCd}&year=" + $("#year").val() + "&month=" + $("#month").val());
		});
		
		$(".closeBtn").click(function()
		{
			window.close();
		});
	});

</script>
</style>
</head>
<body>

	<div style="font-family: Pretendard; text-align: center;">
	<br><br>
		<div>
			<form method="get">
				<select name="year" id="year" onchange="formChange(this.form)" style="border: none; font-size: 18pt;">
				<%
				for (int i=-10; i<=10; i++)
				{
					if ((selectYear+i) == selectYear)
					{
				%>
						<option value=<%=(selectYear+i) %> selected="selected"><%=(selectYear+i) %></option>
				<%
					}
					else
					{
				%>
						<option value=<%=(selectYear+i) %>><%=(selectYear+i) %></option>
				<%
					}
				}
				%>
				</select>
				년			
				<select name="month" id="month" onchange="formChange(this.form)" style="border: none; font-size: 18pt;">
				<%
				for (int i=1; i<=12; i++)
				{
					if (i == selectMonth)
					{
				%>
						<option value=<%=i %> selected="selected"><%=i %></option>
				<%
					}
					else
					{
				%>
						<option value=<%=i %>><%=i %></option>
				<%		
					}
				}
				%>
				</select>
				월&nbsp;
				<button type="button" class="submitBtn" style="width: 50px; height: 30px; border: none; border-radius: 5px; background-color: #F2F2F2; font-weight: 600;">검색</button>
			</form>
		</div>
		<br>
		<hr style="border: 1px solid #F2F2F2;">
		<br>
		<span style="font-size: 16pt;">누적정산금<br> <span style="font-size: 18pt; font-weight: 600;">${accAmount }</span>원</span>
		<br><br>
		<hr style="border: 1px solid #F2F2F2;">
		<!-- 
		<table style="width: 100%; border-top: 4px solid #F2F2F2; border-bottom: 4px solid #F2F2F2; padding-top: 10px; padding-bottom: 10px;">
			<tr>
				<th>수행일자</th>
				<th>정산금액</th>
			</tr>
			<tr>
				<td>2024.09.10</td>
				<td>42,000원</td>
			</tr>
			<tr>
				<td>2024.09.01</td>
				<td>32,000원</td>
			</tr>
		</table>
		 -->
		 <div style="background-color: #F2F2F2; font-size: 14pt; font-weight: 600; text-align: center;">
			<div style="display: flex; justify-content: space-around; text-align: center;">
				<div style="width: 10%;"></div>
				<div style="width: 40%; margin-top: 10px; margin-bottom: 10px;">
					수행일자
				</div>
				<div style="width: 40%; margin-top: 10px; margin-bottom: 10px;">
					정산금액
				</div>	
				<div style="width: 10%;"></div>
			</div>
		</div>
		<c:forEach var="sal" items="${salList }">
			<div style="display: flex; justify-content: space-around; text-align: center;">
				<div style="width: 10%;"></div>
				<div style="width: 40%; margin-top: 20px; margin-bottom: 15px;">
					${sal.work_date }
				</div>
				<div style="width: 40%; margin-top: 20px; margin-bottom: 15px;">
					${sal.perform_money }
				</div>	
				<div style="width: 10%;"></div>
			</div>
			<hr style="border: 1px solid #F2F2F2;">
		</c:forEach>
		<br><br>
		<div style="text-align: center;">
		<button type="button" class="closeBtn" style="width:15%; height: 40px; border: none; border-radius: 5px; background-color: #F2F2F2; font-weight: 600;">닫기</button>
		</div>
	</div>
</body>
</html>