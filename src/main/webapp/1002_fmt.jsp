<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "fmt" uri = "http:java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	s<P>----------기본 로케일--------------</P>
	<fmt:setBundle basename= "ch09.com.bundle.myBundle"var="resourceundle"/>
	<p>제목:<fmt:message key = "title" bundle="${resourceBundle} " />
	<P>이름:<fmt:message key = "username" var= "userMsg" bundle="${resourceBundle }"/>


	<P>----------영문 로케일--------------</P>
	<fmt:setBundle basename= "ch09.com.bundle.myBundle"var="resourceundle"/>
	<p>제목:<fmt:message key = "title" bundle="${resourceBundle} " />
	<P>이름:<fmt:message key = "username" var= "userMsg" bundle="${resourceBundle }"/>
</body>
</html>