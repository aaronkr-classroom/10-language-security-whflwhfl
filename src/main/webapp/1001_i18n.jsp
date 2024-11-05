<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.DateFormat" %>
<%@ page import = "java.text.NumberFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I18N</title>
</head>
<body>
	<h3>현재 로케일의 국가, 날짜, 통화</h3>
	<%
	Locale locale = request.getLocale();
	String displayLang = locale.getDisplayLanguage();
	String lang = locale.getLanguage();
	String displayCty = locale.getDisplayCountry();
	String cty = locale.getCountry();
		
	
	
	Date currentDate = new Date();
	DateFormat dateFormat = DateFormat.getDateInstance(
				DateFormat.FULL, locale);
	NumberFormat numFormat = NumberFormat.getNumberInstance(locale);
		%>
		<ul>
			<li>국가: <%= displayCty%></li>
			<li>국가 코드: <%= cty %></li>
			<li>언어: <%= displayLang %></li>
			<li>언어 코드: <%= lang %></li>
			<li>날짜: <%= dateFormat.format(currentDate) %></li>
			<li>숫자 (12345.67): <%= numFormat.format(12345.67) %></li>
		</ul>

</body>
</html>