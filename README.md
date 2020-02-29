# springboot-Mybatis-MVC-MySQL-DSENG


head.jsp , application.yml >> .gitignore



## head.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>덕수ENG</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/themify-icons.css">
    <link rel="stylesheet" href="/css/nice-select.css">
    <link rel="stylesheet" href="/css/flaticon.css">
    <link rel="stylesheet" href="/css/gijgo.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/slick.css">
    <link rel="stylesheet" href="/css/slicknav.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">

    <link rel="stylesheet" href="/css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
    <style>
    .note-toolbar{
    z-index: 0;
    }
    .note-editing-area{
    z-index: 0;
    }
    </style>
    <script type="text/javascript" src="https://cdn.emailjs.com/sdk/2.3.2/email.min.js"></script>
	<script>
		(function(){
        emailjs.init('SECRET CODE');
     	})();
		window.onload = function() {
	        document.getElementById('email-form').addEventListener('submit', function(event) {
	            event.preventDefault();
	            // generate the contact number value
	            /* this.contact_number.value = Math.random() * 100000 | 0; */
	            
	            //서비스 id, 이메일 템플릿
	            var b=confirm("전송하시겠습니까?");
	            
	            if(b){
	            	emailjs.sendForm('MY emailJS ID', 'SECRET TEMPLETE CODE', this);
	            	alert("메일을 발송하였습니다.");
	            	document.getElementById("email-form").reset();
	            	
	            }else{
	            	return false;
	            }
	            
	        });
	    }
	</script>
</head>
```

## application.yml
```yml
server:
  port: 8081
  servlet:
    context-path: /

spring:
  mvc:
    view:
      prefix: /WEB-INF/views/
      suffix: .jsp

  datasource:
    url: [YOUR SQL SERVER URL]
    driver-class-name: com.mysql.cj.jdbc.Driver
    username: [YOUR SQL SERVER USER ID]
    password: [YOUR SQL SERVER USER PASSWORD]

  http:
    encoding:
      charset: UTF-8
      enabled: true
      force: true
      
  servlet:
    multipart:
      enabled: true
      max-file-size: 20MB

```
