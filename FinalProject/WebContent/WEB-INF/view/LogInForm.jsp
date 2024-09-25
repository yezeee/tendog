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
<title>LogIn.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
    $().ready(function() 
    {
        function updateBackground() 
        {
            $('input[name="memType"]').each(function() 
            {
                if ($(this).is(':checked')) 
                {
                    $(this).parent().css({'background-color':'gray', 'color':'white', 'font-size':'14pt', 'font-weight':'600'});
                } 
                else 
                {
                    $(this).parent().css({'background-color':'#F2F2F2', 'color':'black', 'font-size':'14pt', 'font-weight':'600'});
                }
            });
        }

        // 초기 로드 시 선택된 라디오 버튼의 부모 div에 배경색 추가
        updateBackground();

        // 라디오 버튼 변경 시 배경색 업데이트
        $('input[name="memType"]').change(function() 
        {
            updateBackground();
        });
    });
</script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="main" style="background-color: #F2F2F2;">
	<br><br>
	<form action="login.action" method="post">
		<div style="background-color: white; width: 20%; margin: 0 auto; text-align: center; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1); margin-top: 100px; margin-bottom: 120px;">
			<br><br>
			<div>
			<img src="images/logoVertical.png" style="width: 20%; vertical-align: middle;"><br>
			</div>
			<br><br>
			<div style="display: flex; justify-content: space-between;">
				<div style="width: 5%;"></div>
				<div style="width: 50%; margin: 0 auto; background-color: #F2F2F2; font-weight: 800; border-right: 3px solid white;">
					<br>
					<label for="typeBtnD">
						반려인
					</label>
					<input type="radio" id="typeBtnD" name="memType" value="D" checked="checked" style="display: none;">
					<br><br>
				</div>
				<div style="width: 50%; margin: 0 auto; background-color: #F2F2F2; font-weight: 800;">
					<br>
					<label for="typeBtnS">
						펫시터
					</label>
					<input type="radio" id="typeBtnS" name="memType" value="S" style="display: none;">
					<br><br>
				</div>
				<div style="width: 5%;"></div>
			</div>
			<div style="width: 90%; margin: 0 auto; border: 2px solid #F2F2F2;">
				<br>
				<c:if test="${param.errorMsg == 'errMsg'}">
             		<p style="color: blue; font-size: 12pt; font-weight: 400;">이메일 또는 비밀번호가 잘못되었습니다.</p>
         		</c:if>
				<div style="width: 90%; margin: 0 auto; display: flex; justify-content: space-between;">
					<div style="width: 70%; margin: 0 auto; text-align: right; font-weight: 600;">
						<br>
						이메일&nbsp;
						<input type="text" id="id" name="id" style="width: 60%; border: none; background-color: #F2F2F2;">
						<br>
						비밀번호&nbsp;
						<input type="password" id="pw" name="pw" style="width: 60%; border: none; background-color: #F2F2F2;">
						<br><br>
					</div>
					<div style="width: 2%; margin: 0 auto;"></div>
					<div style="width: 20%; margin: 0 auto;">
						<br>
						<div style="background-color: #F2F2F2; border-radius: 5px; font-weight: 800; line-height: 90%;">
							<br>
							<button type="submit" style="border: none; font-weight: 600; font-family: Pretendard">로그인</button>
							<br><br>
						</div>
						<br><br>
					</div>
					<div style="width: 5%; margin: 0 auto;"></div>
					<br><br>
				</div>
			</div>
			<br>
			<div style="font-size: 10pt;">
				<a>아이디찾기</a>&nbsp;&nbsp;
				<a>비밀번호찾기</a>&nbsp;&nbsp;
				<a href="memberinsertform.action">회원가입</a>
			</div>
			<br><br>
		</div>	
	</form>
	<br><br>
</div>

<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>