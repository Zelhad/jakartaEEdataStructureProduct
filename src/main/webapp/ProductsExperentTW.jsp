

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="jakartaEEdataStructureProduct.model.Product"%>
<%@page
	import="jakartaEEdataStructureProduct.service.ProductArrayListService"%>
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
	
	
	<!--  
		<tr>
			<th>PRODUCT CODE</th>
			<th>PRODUCT NAME</th>
		</tr>
		<%--  
		<%
		ProductArrayListService productArrayListService = new ProductArrayListService();
		List<Product> products = productArrayListService.listAllProducts();
System.out.println("testtttttttttttttttttttt");
		for (Product product : products) {
			//System.out.println("CODE PRODUCT --->   " + product.getCode() + "   NAME PRODUCT " + product.getName());
		%>
		<tr>

			<td>${product.code}</td>
			<td>${product.name}</td>
		</tr>

		<%
		}
		%>
		--%>
-->

<!--  

	<h1>*************************FIND product ****************</h1>
	<form method="post" action="">
		<label for="product_code"> PRODUCT CODE :</label> <input type="text"
			name="product_code" id="product_code" /> <input type="submit"
			value="Check" />
	</form>
	-->
	<%-- 
	<%
	if ("POST".equals(request.getMethod())) {
		String codeProduct = request.getParameter("product_code");

		if (codeProduct == null || codeProduct.trim().isEmpty()) {
	%>
	<div Style="color: red; font-size: 18px">codeProduct should not
		be empty</div>
	<%
	} else {
	Product product = productArrayListService.findProduct(codeProduct);

	if (product.getCode() != null) {
	%>
	<table>
		<tr>
			<td><%=product.getName()%></td>
			<td><%=product.getCode()%></td>
		</tr>
	</table>
	<%
	} else {
	%>
	<div style="border: 1px solid red; color: red;">code not found</div>
	<%
	}

	}

	}
	%>
	<!-- 
	<h1>Add product to ArrayList via JSP</h1>
	<form method="post" action="">
		<label for="code">CODE PRODUCT </label><input type="text" name="code"
			id="code" /> <label for="name"> PRODUCT NAME </label><input
			type="text" name="name" id="name" /> <input type="submit"
			value="add product " name="addToArrayList" />



	</form>
	-->
</body>

--%>
</html>