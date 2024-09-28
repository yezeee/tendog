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
<title>MyApplyList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
</head>
<body>

<c:import url="Menu.jsp"></c:import>
	
	<div class="main" style="background-color: white; display: flex; justify-content: space-between;">
		<br><br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
			<br><br> 
			<a href="" style="font-weight: 800; line-height: 150%;">지원내역&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
			<a href="myperformlist.action" style="font-weight: 500;">수행내역&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<div class="content" style="width: 60%; text-align: left; font-size: 18pt; font-weight: 600;">
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;지원중
			<div style="float: right;">
				<select>
					<option>정렬</option>
				</select>
			</div>
			<hr style="border: 1px solid #F2F2F2;">
			
			<table style="font-size: 12pt; width: 100%; text-align: center;">
				<tr style="background-color: #F2F2F2; font-weight: 600;">
					<th>예약일시</th>
					<th>작성일자</th>
					<th>지원자수</th>
					<th>마감일시</th>
					<th></th>
				</tr>
				<tr style="font-weight: 400; border-bottom: 1px solid #F2F2F2;">
					<td>2024.09.10 14:00 ~ 16:00</td>
					<td>2024.09.01</td>
					<td>5</td>
					<td>2024.09.10 08:00</td>
					<td>
						<button type="button">의뢰서보기</button>
						<button type="button">지원취소하기</button>
					</td>
				</tr>
				<tr style="font-weight: 400; border-bottom: 1px solid #F2F2F2;">
					<td>2024.09.16 8:00 ~ 12:00</td>
					<td>2024.09.02</td>
					<td>2</td>
					<td>2024.09.16 02:00</td>
					<td>
						<button type="button">의뢰서보기</button>
						<button type="button">지원취소하기</button>
					</td>
				</tr>
			</table>
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;매칭완료
			<div style="float: right;">
				<select>
					<option>정렬</option>
				</select>
			</div>
			<hr style="border: 1px solid #F2F2F2;">
			<table style="font-size: 12pt; width: 100%; text-align: center;">
				<tr style="background-color: #F2F2F2; font-weight: 600;">
					<th>예약일시</th>
					<th>작성일자</th>
					<th>지원자수</th>
					<th>마감일시</th>
					<th></th>
				</tr>
				<tr style="font-weight: 400; border-bottom: 1px solid #F2F2F2;">
					<td>2024.09.10 14:00 ~ 16:00</td>
					<td>2024.09.01</td>
					<td>5</td>
					<td>2024.09.10 08:00</td>
					<td>
						<button type="button">의뢰서보기</button>
					</td>
				</tr>
				<tr style="font-weight: 400; border-bottom: 1px solid #F2F2F2;">
					<td>2024.09.16 8:00 ~ 12:00</td>
					<td>2024.09.02</td>
					<td>2</td>
					<td>2024.09.16 02:00</td>
					<td>
						<button type="button">의뢰서보기</button>
					</td>
				</tr>
			</table>
			<br><br>
		</div>
		<div style="width: 20%;"></div>
	</div>

	<br><br><br>

	<div class="footer" style="background-color: #BBBBBB;">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	</div>

</body>
</html>