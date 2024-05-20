<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="css/SubscriptionPlan.css"/>

</head>
<body>
	<h:form>
	   <section class="pricing-section">
        <div class="pricing">
            <div class="pricing-body">
                <div class="pricing-body-header">
                    <h2>Choose a plan</h2>
                   
                </div>
                <div class="pricing-body-plans">

                    <div class="active" id="pricing__monthly__plan">
                        <div>
                            <div class="card">
                                <div class="card-header">
                                    <span class="card-title">Starter</span>
                                    <h2 class="card-price">$30</h2>
                                </div>
                                <div class="card-body">
                                    <ul>
                                        <li>500 MAUs</li>
                                        <li>3 projects</li>
                                        <li>Unlimited guides</li>
                                        <li>Unlimited flows</li>
                                        <li>Unlimited branded themes</li>
                                        <li>Email support</li>
                                    </ul>
                                </div>
                                <div class="card-footer">
                                    <button>Choose Plan</button>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <span class="card-title">Pro</span>
                                    <h2 class="card-price">$50</h2>
                                    <div class="card-users">
                                        <datalist id="pro__users__limit">
                                            <option value="50 MAUs">
                                            <option value="100 MAUs">
                                            <option value="500 MAUs">
                                            <option value="1000 MAUs">
                                            <option value="2500 MAUs">
                                        </datalist>
                                        <span>Monthly active users</span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <ul>
                                        <li>All starter features, plus:</li>
                                        <li>Unlimited projects</li>
                                        <li>Unlimited fully customizable themes</li>
                                        <li>A dedicated Customer Success Manager</li>
                                    </ul>
                                </div>
                                <div class="card-footer">
                                    <button>Choose Plan</button>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <span class="card-title">Enterprise</span>
                                    <h2 class="card-price">Let's Talk!</h2>
                                </div>
                                <div class="card-body">
                                    <ul>
                                        <li>All Pro features</li>
                                        <li>Unlimited MAUs</li>
                                        <li>Dedicated environment</li>
                                        <li>Enterprise account administration</li>
                                        <li>Premium support and services</li>
                                    </ul>
                                </div>
                                <div class="card-footer">
                                    <button>Contact Us</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="pricing__anually__plan">
                        <div>
                            <div class="card">
                                <div class="card-header">
                                    <span class="card-title">Starter</span>
                                    <h2 class="card-price">$19</h2>
                                </div>
                                <div class="card-body">
                                    <ul>
                                        <li>500 MAUs</li>
                                        <li>3 projects</li>
                                        <li>Unlimited guides</li>
                                        <li>Unlimited flows</li>
                                        <li>Unlimited branded themes</li>
                                        <li>Email support</li>
                                    </ul>
                                </div>
                                <div class="card-footer">
                                    <button>Choose Plan</button>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <span class="card-title">Pro</span>
                                    <h2 class="card-price">$99<span>/month</span></h2>
                                    <div class="card-users">
                                        <input list="pro__users__limit" name="pro__users__input" id="pro__users__input">
                                        <datalist id="pro__users__limit">
                                            <option value="50 MAUs">
                                            <option value="100 MAUs">
                                            <option value="500 MAUs">
                                            <option value="1000 MAUs">
                                            <option value="2500 MAUs">
                                        </datalist>
                                        <span>Monthly active users</span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <ul>
                                        <li>All starter features, plus:</li>
                                        <li>Unlimited projects</li>
                                        <li>Unlimited fully customizable themes</li>
                                        <li>A dedicated Customer Success Manager</li>
                                    </ul>
                                </div>
                                <div class="card-footer">
                                    <button>Choose Plan</button>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <span class="card-title">Enterprise</span>
                                    <h2 class="card-price">Let's Talk!</h2>
                                </div>
                                <div class="card-body">
                                    <ul>
                                        <li>All Pro features</li>
                                        <li>Unlimited MAUs</li>
                                        <li>Dedicated environment</li>
                                        <li>Enterprise account administration</li>
                                        <li>Premium support and services</li>
                                    </ul>
                                </div>
                                <div class="card-footer">
                                    <button>Contact Us</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
	</h:form>
	<script type="text/javascript" src="js/custom.js"></script>
</body>
	</html>
</f:view>
