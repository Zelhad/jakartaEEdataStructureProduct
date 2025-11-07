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
	<h2>🎯 Mastering &lt;c:set&gt; with Product</h2>

	//Create a javaBean using JSP
	<jsp:useBean id="product"
		class="jakartaEEdataStructureProduct.model.Product" scope="page" />
	<h1>Set the bean using var and value of the Set</h1>
	<c:set var="codeProduct" value="code000001"></c:set>
	<c:set var="nameProduct" value="SMARTFONS"></c:set>
	<H3>List products</H3>
	<p>
		<c:out value="${codeProduct} "></c:out>
	</p>
	<p>
		<c:out value="${nameProduct} "></c:out>
	</p>
	<hr />
	<h2>Set the bean using target and property</h2>
	<c:set var="codeproductTarget" target="${product}"
		property="codeProduct" value="code0001TargetAndProperty"></c:set>
	<c:out value="${codeproductTarget}"></c:out>

	<c:set var="nameProduct" target="${product}" property="nameProduct"
		value="GARDEN GADJET "></c:set>
	<c:out value="${nameProduct} "></c:out>
	<hr />
	<h2>Set the varaible use different SCOP</h2>
	<!--  DEFAULT SCOP  {page} -->
	<c:set var="message" value="this  is default scope  PAGE"></c:set>
	<p>
		<c:out value="${message} "></c:out>
	</p>
	<%-- request scope --%>
	<c:set var="requestMessage" value="This is on request scope"
		scope="request" />

	<%-- session scope --%>
	<c:set var="sessionMessage" value="This is on session scope"
		scope="session" />

	<%-- application scope --%>
	<c:set var="appMessage" value="This is on application scope"
		scope="application" />

	<p>
		Request:
		<c:out value="${requestScope.requestMessage}" />
	</p>
	<p>
		Session:
		<c:out value="${sessionScope.sessionMessage}" />
	</p>
	<p>
		Application:
		<c:out value="${applicationScope.appMessage}" />
	</p>

	<hr />
</body>
</html>