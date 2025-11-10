<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="jakartaEEdataStructureProduct.model.Product"%>

<%@page
	import="jakartaEEdataStructureProduct.service.ProductArrayListService"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="age" value="36" />
	<c:out value="${age }"></c:out>
	<c:if test="${age>18 }">
		<c:out value="adult"></c:out>
	</c:if>

<h1 class="title">Using var Attribut to store the  value returned</h1>
<!--  Create a varaible  -->
<c:set var="score" value="90"/>
<c:if test="${score > 100 }" var="passed"></c:if>
<p>Test passed    ? <c:out  value ="${passed}"></c:out></p>
</body>
</html>