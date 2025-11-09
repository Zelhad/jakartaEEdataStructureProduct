<%@page import="java.util.List"%>
<%@page import="jakartaEEdataStructureProduct.model.Product"%>

<%@page
	import="jakartaEEdataStructureProduct.service.ProductArrayListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- EXERCISE 1 — Basic Loop Display -->
	<!-- EXERCISE 2 — Using varStatus -->
	<!-- EXERCISE 3 — Begin and End -->
	<!-- EXERCISE 4 — Using c:set -->
	<%
	ProductArrayListService productService = new ProductArrayListService();
	List<Product> products = productService.listAllProducts();
	request.setAttribute("products", products);
	%>
	<table style="">
		<tr>
			<th>INDEX</th>
			<th>PRODUCT CODE</th>
			<th>PRODUCT NAME</th>

		</tr>
		<c:forEach var="product" items="${products}" varStatus="Iterate"
			begin="3" end="7">
			<tr>
				<td><c:out value="${Iterate.index}"></c:out></td>
				<td><c:out value="${product.getCode()}"></c:out></td>
				<td><c:out value="${product.getName()}"></c:out></td>
			</tr>
		</c:forEach>

	</table>
	<c:set var="firstProduct" value="${products.get(0)}"></c:set>
	<p>FIRST PRODUCT :
	<ul>
		<li>
		<c:out value="${firstProduct.name}"></c:out>
		</li>
		<li>
		<c:out value="${firstProduct.code}"></c:out>
		</li>
	</ul>
	<p>Total of PRODUCTS ----> <c:out value ="${fn:length(products)}"></c:out></p>
	
	
</body>
</html>