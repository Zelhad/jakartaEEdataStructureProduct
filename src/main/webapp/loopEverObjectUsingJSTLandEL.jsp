<%@page
	import="jakartaEEdataStructureProduct.service.ProductArrayListService"%>
<%@page import="jakartaEEdataStructureProduct.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello For using JSTL</h1>
	<%
	List<String> names = Arrays.asList("Zouhair", "Nadia", "Souad");
	request.setAttribute("names", names);
	%>
	<ul>
		<c:forEach var="name" items="${names}">
			<li>${name }</li>
		</c:forEach>
	</ul>
	<h2>Loop over a an Object</h2>
	<%
	ProductArrayListService productArrayListService = new ProductArrayListService();
	List<Product> products = productArrayListService.listAllProducts();
	request.setAttribute("products", products);
	%>
	<ul>
		<c:forEach var="product" items="${products}">
			<li>${product.code}- ${product.name}</li>
		</c:forEach>

	</ul>
</body>
</html>