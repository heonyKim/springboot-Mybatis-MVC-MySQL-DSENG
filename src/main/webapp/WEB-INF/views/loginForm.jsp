<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<%@include file="/WEB-INF/views/include/head.jsp" %>
<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
        
    <!-- header-start -->
    <%@include file="/WEB-INF/views/include/header.jsp" %>
    <!-- header-end -->

    
        <!-- about_area_start  -->
	<div class="about_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-3"></div>
				<div class="col-lg-6">
						<div class="form-group" style="text-align: center;"><h3>LOGIN</h3></div>
					<form action="/login" method="post" >
						<div class="form-group" style="border: 1px solid #dddddd;">
						<input type="text" name="username" placeholder="아이디" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디'" required class="single-input">
						</div>
						
						<div class="form-group" style="border: 1px solid #dddddd;">
						<input type="password" name="password" placeholder="비밀번호" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'" required class="single-input">
						</div>
						
						<div class="form-group">
						<input type="submit" class="genric-btn info" value="login" style="float: right;">
						</div>
					</form>
				</div>
				<div class="col-lg-3"></div>
			</div>
		</div>
	</div>

    

    <!-- footer_start  -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- footer_end  -->
	<%@include file="/WEB-INF/views/include/js.jsp" %>
</body>
</html>