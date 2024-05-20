<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>

</head>
<body>
	<h:form>
	    Balance ID:
		<h:inputText value = "#{balance.balanceId}"></h:inputText><br>
		User ID:
		<h:inputText value = "#{balance.userId}"></h:inputText><br>
		Balance:
		<h:inputText value = "#{balance.balance}"></h:inputText><br>
		<h:commandButton action="#{bodyImpl.addBalance(balance)}" value="Add" />
	</h:form>
</body>
	</html>
</f:view>
