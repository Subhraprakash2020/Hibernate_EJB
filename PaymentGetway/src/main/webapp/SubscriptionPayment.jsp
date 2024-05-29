<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="css/SubscriptionPayment.css" />

</head>
<body>
	<h:form>
		<div class="credit-card-form">
			<h2>PAYMENT PORTAL</h2>
			<img class="Image1"
				src="https://i.ibb.co/hgJ7z3J/6375aad33dbabc9c424b5713-card-mockup-01.png"
				alt="6375aad33dbabc9c424b5713-card-mockup-01" border="0"></a>

			<div class="order_details">
				<li class="flex_between"><span class="span_col">Company</span>
					<h:outputText value="#{company}" /></li>
				<li class="flex_between"><span class="span_col">Plan</span> <h:outputText
						value="#{plan}" /></li>
				<li class="flex_between"><span class="span_col">GST(%)</span> <h:outputText
						value="#{gst}" /></li>
				<li class="flex_between"><span class="span_col">Amount</span> <h:outputText
						value="#{amount}" /></li>
			</div>
			<h:commandButton action="#{bodyImpl.ClaimPlanMonthly()}" value="Choose Plan"></h:commandButton>
		<!-- 	<button type="submit" class="click-button"
				onclick="showLoading(event, this)">PAY NOW - $(TOTAL)</button> -->
		</div>
	</h:form>
</body>
	</html>
</f:view>
