

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="jakartaEEdataStructureProduct.model.Product"%>
<%@page
	import="jakartaEEdataStructureProduct.service.ProductArrayListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>PRODUCT CODE</th>
			<th>PRODUCT NAME</th>
		</tr>
		<%
		ProductArrayListService productArrayListService = new ProductArrayListService();
		List<Product> products = productArrayListService.listAllProducts();
		for (Product product : products) {
			System.out.println("CODE PRODUCT --->   " + product.getCode() + "   NAME PRODUCT " + product.getName());
		%>
		<tr>
			<td><%=product.getCode()%></td>
			<td><%=product.getName()%></td>
		</tr>

		<%
		}
		%>

	</table>
</body>
</html>