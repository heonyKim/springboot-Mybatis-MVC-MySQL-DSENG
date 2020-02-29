<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<header>
       <div class="header-area ">
           <div id="sticky-header" class="main-header-area">
               <div class="container-fluid p-0">
                   <div class="row align-items-center no-gutters">
                       <div class="col-xl-2 col-lg-2">
                           <div class="logo" style="background:#0d3ea3">
                               <a href="/" style="color:white; font-size: 13.5pt;">
                                   <img src="/img/logo.png" alt="">&nbsp;DUKSU ENG
                               </a>
                           </div>
                       </div>
                       <div class="col-xl-6 col-lg-6">
                           <div class="main-menu  d-none d-lg-block">
                               <nav>
                                   <ul id="navigation">
                                   		
                                       <li><a class="active" href="/">메인화면</a></li>
                                       <li><a href="/about">회사소개</a></li>
                                       <li><a href="/product/1">제품소개</a>
                                           <ul class="submenu" id="productMenu">
                                           </ul>
                                       </li>
                                       <!-- <li><a href="/video">제품영상</a></li> -->
                                       <li><a href="/result">성과/사례</a></li>
                                       <li><a href="/contact">견적문의</a></li>
                                       <c:if test="${!empty sessionScope.admin}">
                                   		<li><a class="active" href="/logout">logout</a></li>
                                   		</c:if>
                                   </ul>
                               </nav>
                           </div>
                       </div>
                       <div class="col-xl-4 col-lg-4 d-none d-lg-block">
                           <div class="social_wrap d-flex align-items-center justify-content-end">
                               <div class="login_text">
									<c:choose>
										<c:when test="${empty sessionScope.admin}">
											<a href="/loginForm">Login</a>
										</c:when>
										<c:otherwise>
										</c:otherwise>
									</c:choose>
									
                               </div>
                               <div class="number">
                                   <p style="border-bottom: 1px solid white;">제품문의 <a href="tel:1577-2554" style="color:yellow; font-weight: bold;">1577-2554</a></p>
                               </div>
                           </div>
                       </div>
                       <div class="col-12">
                           <div class="mobile_menu d-block d-lg-none"></div>
                       </div>
                   </div>

               </div>
           </div>
       </div>
</header>
<script src="/js/vendor/jquery-1.12.4.min.js"></script>
<script>
	$(document).ready(function(){
		$.ajax({
			async:false,
			url:"/productMenu",
			success:function(data){
				var json = JSON.parse(data);
				for(menu in json){
					$("#productMenu").append("<li><a href='/product/"+json[menu].categoryNumb+"'>"+json[menu].categoryName+"</a></li>");
				}
			}
		});
	});
</script>