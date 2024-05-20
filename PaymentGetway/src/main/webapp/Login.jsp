<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>
	<h:form>
	   <%--  Username
	    <h:inputText value="#{login.userName}" /><br>
	    Password
	    <h:inputSecret value="#{login.password}" /><br>
	    <h:commandButton action="#{LoginImpl.loginUser(login)}" value="Login" /> --%>
	    <div class="login-container">
  <div class="login-content">
    <div class="login-content_header">
      <span id="logo">
        <box-icon type='solid' name='landscape' color="#87A922"></box-icon> Land Scape
      </span>
      <h2>Create account</h2>
    </div>
    <div>
      <div class="login-form">
        Username
        <h:inputText value = "#{login.userName}"/>
        Password
        <h:inputSecret value = "#{login.password}"/><br>
        <h:commandButton action = "#{LoginImpl.loginUser(login)}" value="LOGIN" />
      </div>
      <div class="login-netoworks">
        <span>or sign up with</span>
        <ul class="login-icons">
          
            <box-icon color="#87a922" type='logo' name='google' id="icon_n">
            <i class="fa fa-google" aria-hidden="true"></i>
            </box-icon>
    
     
            <box-icon color="#87a922" name='twitter' type='logo' id="icon_n">
            <i class="fa fa-twitter" aria-hidden="true"></i>
            </box-icon>
         
            <box-icon color="#87a922" type='logo' name='github' id="icon_n">
            <i class="fa fa-github" aria-hidden="true"></i>
            </box-icon>
        </ul>
      </div>
      <p>By creating an account you agree to Land Scape's <strong>Terms of Services</strong> and <strong>Privary Policy.</strong></p>
    </div>
  </div>
  <div class="login-footer"></div>
</div>
	</h:form>
</body>
	</html>
</f:view>
