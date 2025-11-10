<%@page import="java.util.List"%>
<%@page import="jakartaEEdataStructureProduct.model.Product"%>

<%@page
	import="jakartaEEdataStructureProduct.service.ProductArrayListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Exercise 1 – c:out and c:set basics -->
	<h2>Exercise 1 – c:out and c:set basicss</h2>
	<c:set var="productCode" value="PRODSET00001"></c:set>
	<c:set var="productName" value="PRODNAMESET00001"></c:set>
	PRODUCT CODE --->
	<c:out value="${productCode}"></c:out>
	<br /> PRODUCT NAME ---->
	<c:out value="${productName}"></c:out>
	<hr />
	<h2>Exercise 2 – c:forEach basic</h2>
	<%
	ProductArrayListService productArrayListService = new ProductArrayListService();
	List<Product> products = productArrayListService.listAllProducts();
	request.setAttribute("products", products);
	%>
	<table>
		<tr>
			<th>code</th>
			<th>name</th>
		</tr>
		<c:forEach var="product" items="${products}">
			<tr>
				<td><c:out value="${product.name}"></c:out></td>
				<td><c:out value="${product.code}"></c:out></td>

			</tr>
		</c:forEach>
	</table>
	<hr />
	<h2>Exercise 3 – Using begin / end / varStatus</h2>
	<table>
		<tr>
			<th>INDEX</th>
			<th>CODE</th>
			<th>NAME</th>

		</tr>
		<c:forEach var="product" begin="2" end="5" items="${products}"
			varStatus="iterate">
			<tr>
				<td><c:out value="${iterate.index}"></c:out></td>
				<td><c:out value="${product.code}"></c:out></td>
				<td><c:out value="${product.name}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	<hr />
	<h2>Exercise 4 – c:if condition Goal: Only display products whose
		names contain "O" or "A" (case-sensitive check).</h2>

	<table>
		<tr>
			<th>code</th>
			<th>name</th>
		</tr>
		<tr>
			<c:forEach var="product" items="${products}">
				<c:if
					test="${fn:contains(product.name,'o') || fn:contains(product.name,'a') }">
					<td><c:out value="${product.code}"></c:out></td>
					<td><c:out value="${product.name}"></c:out></td>
				</c:if>
			</c:forEach>
		</tr>
	</table>
	<hr />
	<h2>Exercise 5 – Using c:choose for Product Categories</h2>
	<h2>Exercise 5 – Using c:choose for Product Categories</h2>

	<c:forEach var="product" items="${products}">
		<c:choose>

			<c:when
				test="${product.name == 'LAPTOPS' || product.name == 'MOBILS'}">
				<p>

					<c:out value="${product.name}" />
					— Electronics Category
				</p>
			</c:when>

			<c:when test="${product.name == 'CARS' || product.name == 'MOTOS'}">
				<p>

					<c:out value="${product.name}" />
					— Vehicles Category
				</p>
			</c:when>

			<c:otherwise>
				<p>

					<c:out value="${product.name}" />
					— Other Category
				</p>
			</c:otherwise>

		</c:choose>
	</c:forEach>
	<hr />
	<h2>Link in JSTL</h2>
	<c:url var="link" value="tp1.jsp"></c:url>
	<a href="${link}">Go -></a>


	<h2>Exercise — Build URLs for each product</h2>
	<c:forEach var="product" items="${products}">
		<c:url value="productDetails.jsp" var="productLink">
			<!-- later we’ll add c:param here -->
		</c:url>
		<a href="${productLink}"> <c:out value="${product.name}" />
		</a>
		<br>
	</c:forEach>

	<c:url var="productLink" value="productDetails.jsp">
		<c:param name="code" value="${product.code}" />
		<c:param name="name" value="${product.name}" />
	</c:url>
	<a href="${productLink}">${product.name}</a>
	<hr>
	<hr>
	
	

	<!-- CNRL SHIFT T TO OPEN ANY TYPE OF JAVA (classes, Interfaces) -->
	





</body>
</html>