
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
    enctype="multipart/form-data" �Ӽ���
    ���̳ʸ� ������ ������ �����ϴ� ��쿡�� ���
 -->
<form action="/PracticeHTML/FileTest_Receive.jsp" method="post" enctype="multipart/form-data">
	���� ���ε� : <input type="file" name="upload"><br>
	�ؽ�Ʈ : <input type="text" id="textId" name="textId" value="my name is kimdaehyeok"/>
	<input type="submit" value="���ε�">
</form>

</body>
</html>