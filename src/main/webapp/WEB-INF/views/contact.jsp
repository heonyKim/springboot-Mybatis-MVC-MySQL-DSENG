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
    
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_2">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>견적문의</h3>
                        <p> <a href="/">Home</a> / 견적문의</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->
    

	<!-- ================ contact section start ================= -->
    <section class="contact-section">
		<div class="container">
			<div class="d-none d-sm-block mb-5 pb-4">
				<div id="map" style="height: 480px; position: relative; overflow: hidden;"> </div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0dc40b715b816495d1c23b4d6d2ce3dd&libraries=services,clusterer,drawing"></script>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0dc40b715b816495d1c23b4d6d2ce3dd"></script>
				<script>
					// 마커를 생성합니다
					var markers = [ {
						position : new kakao.maps.LatLng(35.291603, 128.845514),
						text : '덕수ENG (경남 김해시 한림면 안곡로 339-13)'
					} ];
					
					var container = document.getElementById('map');
					
					var options = { //지도를 생성할 때 필요한 기본 옵션
						center : new kakao.maps.LatLng(35.291603, 128.845514), //지도의 중심좌표.
						level : 1, //지도의 레벨(확대, 축소 정도)
						marker : markers
					};
					var map = new kakao.maps.StaticMap(container, options); //지도 생성 및 객체 리턴

					
				</script>
			</div>
   
   
			<div class="row">
				<div class="col-12">
 					<h2 class="contact-title">견적문의</h2>
				</div>
				<div class="col-lg-8">
                       <form id="email-form" novalidate="novalidate">
                           <div class="row">
                               <div class="col-12">
                                   <div class="form-group">
                                       <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = '문의 내용'" placeholder="문의 내용"></textarea>
                                   </div>
                               </div>
                               <div class="col-sm-6">
                                   <div class="form-group">
                                       <input class="form-control valid" name="user_name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '보내시는 분의 회사(성함)'" placeholder="보내시는 분의 회사(성함)">
                                   </div>
                               </div>
                               <div class="col-sm-6">
                                   <div class="form-group">
                                       <input class="form-control valid" name="user_email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = '보내시는 분의 메일'" placeholder="보내시는 분의 이메일">
                                   </div>
                               </div> 
                               <div class="col-12">
                                   <div class="form-group">
                                       <input class="form-control" name="title" id="title" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일 제목'" placeholder="이메일 제목">
                                   </div>
                               </div>
                           </div>
                           <div class="form-group mt-3">
                               <input type="submit" class="button button-contactForm boxed-btn" value="보내기">
                           </div>
                       </form>
                   </div>
                   <div class="col-lg-3 offset-lg-1">
                       <div class="media contact-info">
                           <span class="contact-info__icon"><i class="ti-home"></i></span>
                           <div class="media-body">
                               <h3>경남 김해시</h3>
                               <p>한림면 안곡로 339-13</p>
                           </div>
                       </div>
                       <div class="media contact-info">
                           <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                           <div class="media-body">
                               <h3>1577-2554</h3>
                               <p>고객 문의</p>
                           </div>
                       </div>
                       <div class="media contact-info">
                           <span class="contact-info__icon"><i class="ti-email"></i></span>
                           <div class="media-body">
                               <h3>sung2149@nate.com</h3>
                               <p>언제든지 문의 주세요!</p>
                           </div>
                       </div>
                   </div>
            </div>
        </div>
    </section>
    <!-- ================ contact section end ================= -->

    

    <!-- footer_start  -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- footer_end  -->
	<%@include file="/WEB-INF/views/include/js.jsp" %>
	
</body>
</html>