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
	  
<img src="https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png" class="logo">

  
  <h3>Sign In</h3>
  
  <div class="inputbox">
    <label>Email or phone number</label>
    <h:inputText value = "#{login.userName}"/>
    <p class="msg"></p>
  </div>
  
  
  <div class="inputbox">
    <label>Password</label>
    <h:inputSecret value = "#{login.password}"/>
   <p class="msg"></p>
  </div>

  
  
  <h:commandButton action = "#{LoginImpl.loginUser(login)}" value="LOGIN" styleClass="sub_btn" />
  
  <div class="helpBox">
    <div class="checkBox">
      <input type="checkbox" id="rem">
      <label for="rem">Remember me</label>
    </div>
    
    <a href="##">Need help?</a>
  </div>
  
  <p class="sign">
    New to Netflix?
    <a href="##">Sign up now</a>.
  </p>
  
  <p class="msg">This page is protected by Google reCAPTCHA to ensure you're not a bot. <a href="##">Learn more.</a></p>
  


<!----youtube link----->
<i class="fa fa-youtube-play" style="font-size:1.2em;" title="youtube channel..."> <a href="https://www.youtube.com/@MR.shortzed333" target="_blank">Youtube</a></i>
	</h:form>
</body>
	</html>
</f:view>
