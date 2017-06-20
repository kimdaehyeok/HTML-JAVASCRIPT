
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 
    enctype="multipart/form-data" 속성은
    바이너리 파일을 서버로 전송하는 경우에만 사용
 -->
<form action="/PracticeHTML/FileTest_Receive.jsp" method="post" enctype="multipart/form-data">
	파일 업로드 : <input type="file" name="upload"><br>
	텍스트 : <input type="text" id="textId" name="textId" value="my name is kimdaehyeok"/>
	<input type="submit" value="업로드">
</form>

</body>
</html>