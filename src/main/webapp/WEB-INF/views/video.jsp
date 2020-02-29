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
    <div class="bradcam_area bradcam_bg_3">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>제품영상</h3>
                        <p> <a href="/">Home</a> / 제품영상</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->
    
        <!-- about_area_start  -->
		<div class="about_area">
		<div class="container">
			<div class="row">
				<!-- Side Menu Start -->
				<div class="col-lg-4">
					<div class="blog_right_sidebar">
						<c:if test="${!empty sessionScope.admin}">
						<aside style="text-align: center;">
							<a href="/video/videoWriteForm" class="genric-btn danger" style="margin-bottom:30px;">동영상 등록</a>
						</aside>
						</c:if>
						<aside class="single_sidebar_widget post_category_widget">
	                     <h4 class="widget_title">제품영상</h4>
	                     <ul class="list cat-list">
	                     	<c:forEach var="video" items="${videoList}">
	                     		<li>
		                           <a href="#videoArea" class="d-flex" id="video" onclick="videoDetail(${video.id})">
		                              <p>${video.title}</p>
		                           </a>
	                        	</li>
	                     	</c:forEach>
	                     </ul>
                  		</aside>
					</div>
				</div>
				<!-- Side Menu End -->
				<div class="col-lg-8" id="videoArea">
					<div id="descriptionArea">
					</div>
					<c:if test="${!empty sessionScope.admin}">
					<div id="controlBtn">
					</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
    

    <!-- footer_start  -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- footer_end  -->
	<%@include file="/WEB-INF/views/include/js.jsp" %>
	
	<script>

		videoDetail(${videoList[0].id});
		function videoDetail(id){
			$.ajax({
				async:false,
				url:"/video/"+id,
				success:function(data){
					var htmlTag = "";
					data = JSON.parse(data);
					$("#descriptionArea").html("");
					$("#descriptionArea").html("<h2>"+data.title+"</h2><hr>");
					$("#descriptionArea").append(data.description);
					$("iframe").attr('width','100%');
					$("iframe").attr('height','500');
					htmlTag +="<hr><form action='/video/delete' method='post'>";
					htmlTag +="<input type='hidden' name='id' value='"+data.id+"'>";
					htmlTag +="<input type='submit' class='genric-btn danger' style='float:right; margin-left:15px;' value='영상 삭제' id='deleteBtn'></form>";
					htmlTag +="<form action='/video/videoUpdateForm' method='post'>";
					htmlTag +="<input type='hidden' name='id' value='"+data.id+"'>";
					htmlTag +="<input type='submit' class='genric-btn info' style='float:right;' value='내용 수정'></form>";
					$("#controlBtn").html("");
					$("#controlBtn").append(htmlTag);
					$("#deleteBtn").attr('onclick',"if(!confirm('상품을 삭제 하시겠습니까?')){return false;}");
					
				}
			});
		}
	</script>
	
	
</body>
</html>