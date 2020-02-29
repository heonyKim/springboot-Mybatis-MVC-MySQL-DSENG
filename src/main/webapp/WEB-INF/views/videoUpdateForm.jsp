<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<%@include file="/WEB-INF/views/include/head.jsp" %>

<body>

    <!-- header-start -->
    <%@include file="/WEB-INF/views/include/header.jsp" %>
    <!-- header-end -->
    
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_1">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>동영상 수정</h3>
                        <p> <a href="/">Home</a> / 동영상 수정</p>
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
				<div class="col-12">
					<form action="/video/update" method="post">
						<div class="form-group">
							<input class="form-control" name="title" id="title" type="text" placeholder="동영상 제목" value="${video.title}">
						</div>
						<div class="form-group">
							<textarea class="form-control w-100" name="description" id="summernote" cols="30" rows="9"
							placeholder="영상URL" style="z-index: 0;">${video.description}</textarea>
						</div>
						<input type="hidden" name="id" value="${video.id}">
						<input type="submit" class="genric-btn success" style="float:right;" value="동영상 수정" onclick="if(!confirm('상품을 수정 하시겠습니까?')){return false;}">
					</form>
				</div>
			</div>
		</div>
	</div>

    

    <!-- footer_start  -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- footer_end  -->
	<%@include file="/WEB-INF/views/include/js.jsp" %>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
	<style>
	.note-toolbar .note-editable .note-editing-area{
    z-index: 0;
	}
	
	</style>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
	<script src="js/summernote-ko-KR.js"></script>
	<script>
		$('#summernote').summernote({
			height:300,
			lang:'KO-KR'
		});
	</script>
</body>
</html>