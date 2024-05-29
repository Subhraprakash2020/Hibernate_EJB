<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="css/SubscriptionPlan.css" />
<style>
button {
	border: 1px solid #bc1e4a;
	background: transparent;
	padding: 10px 25px;
	color: #b5b6b8;
	cursor: pointer; &: hover { background : #bc1e4a;
	color: #fff;
}
}
</style>

</head>
<body>
    <h:form>
    <div class = "header_menu">
        <a href="Dashboard.jsf">Home</a>
	    <a href="#">Plan</a>
		<input type="text" id="search" class="search" placeholder="Search"/>
    </div>
    <section class="pricing-plans">
      <div class="pricing-card basic">
        <div class="heading">
          <h4>BASIC</h4>
          <p>for small websites or blogs</p>
        </div>
        <p class="price">
          $30
          <sub>/month</sub>
        </p>
        <ul class="features">
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>1 domain</strong> name
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>10 GB</strong> of disk space
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>100GB </strong>of bandwidth
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>1 MySQL</strong> database
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>5 email</strong> accounts
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>cPanel</strong> control panel
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>Free SSL</strong> certificate
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>24/7</strong> support
          </li>
        </ul>
        <h:commandButton action="#{bodyImpl.plan1()}"
             value="SELECT" styleClass="cta-btn"></h:commandButton>
      </div>
      <div class="pricing-card standard">
        <div class="heading">
          <h4>STANDARD</h4>
          <p>for medium-sized businesses</p>
        </div>
        <p class="price">
          $60
          <sub>/month</sub>
        </p>
        <ul class="features">
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>Unlimited</strong> domain name
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>50 GB</strong> of disk space
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>500GB </strong>of bandwidth
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>10 MySQL</strong> database
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>50 email</strong> accounts
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>cPanel</strong> control panel
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>Free SSL</strong> certificate
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>24/7</strong> support
          </li>
        </ul>
        <button class="cta-btn">SELECT</button>
      </div>
      <div class="pricing-card premium">
        <div class="heading">
          <h4>PREMIUM</h4>
          <p>for small businesses</p>
        </div>
        <p class="price">
          $90
          <sub>/month</sub>
        </p>
        <ul class="features">
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>Unlimited</strong> domain name
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>100 GB</strong> of disk space
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>1TB </strong>of bandwidth
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>Unlimited MySQL</strong> database
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>Unlimited email</strong> accounts
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>cPanel</strong> control panel
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>Free SSL</strong> certificate
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>24/7 priority</strong> support
          </li>
          <li>
            <i class="fa-solid fa-check"></i>
            <strong>Advanced</strong> security features
          </li>
        </ul>
        <button class="cta-btn">SELECT</button>
      </div>
    </section>
	</h:form>
	<script type="text/javascript" src="js/custom.js"></script>
</body>
	</html>
</f:view>
