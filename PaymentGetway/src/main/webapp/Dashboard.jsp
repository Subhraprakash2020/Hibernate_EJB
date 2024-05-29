<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="css/Dashboard.css">

</head>
<body>
	<h:form>
		<header>
			<form id="form">
			    <a href="#">Home</a>
			    <a href="SubscriptionPlan.jsf">Plan</a>
				<input type="text" id="search" class="search" placeholder="Search"/>
			</form>
		</header>
		<main id="main"></main>
		<script src="js/Dashboard.js" async defer></script>
	</h:form>
</body>
	</html>
</f:view>
