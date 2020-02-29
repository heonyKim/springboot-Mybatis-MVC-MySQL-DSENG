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
    <div class="bradcam_area bradcam_bg_1">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>성과/사례</h3>
                        <p> <a href="/">Home</a> / 성과/사례</p>
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
				<table id="table_id" class="display" style="width:100%;">
					<thead>
						<tr>
							<th>순번</th>
							<th>설치완료</th>
						</tr>
					</thead>
					<tbody style="font-size: 0.8rem;">
					</tbody>
				</table>
				</div>
				<c:if test="${!empty sessionScope.admin}">
				<hr>
				<div class="col-lg-4"></div>
				<div class="col-lg-4 col-md-12" style="border: 1px solid #cccccc; padding-left: 0px;padding-right: 0px;">
					<input type="text" id="resultTitle" placeholder="설치 완료된 장소를 입력하세요." onfocus="this.placeholder = ''" onkeydown="enterResultWrite()" required class="single-input" style="width:100%;">
					<a id="resultWriteBtn" class="genric-btn info" style="width:100%; font-weight: bold;" onclick="resultWrite()">입력</a>
				</div>
				<div class="col-lg-4"></div>
				</c:if>
			</div>
		</div>
	</div>

    

    <!-- footer_start  -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- footer_end  -->
	<%@include file="/WEB-INF/views/include/js.jsp" %>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
	<script>
	
	function enterResultWrite(){
		if(event.keyCode===13){
			resultWrite();
		}
	}
	
	resultLoad();
	function resultLoad(){
		$('#table_id').DataTable({
	    	paging : true,
	    	order: [0,'desc'],
			pagingType : "simple_numbers",
			pageLength:25,
	    	language : {
				"zeroRecords" : "데이터가 없습니다.",
				"lengthMenu" : "_MENU_ 개씩 보기",
				"search" : "검색:",
				"info" : "_PAGE_ / _PAGES_",
				"infoFiltered" : "(전체 _MAX_개의 데이터 중 검색결과)",
				"paginate" : {
					"previous" : "이전",
					"next" : "다음"
				}
			},
	    	ajax:{
	    		url:'/result/list',
	    		dataSrc:''
	    	},
	    	columns:[
	    		{data:'num'},
	    		{data:'title'}
	    	]
	    });
	}
	
	function resultWrite(){
		var b = confirm("등록하시겠습니까?");
		var title=$("#resultTitle").val();
		title = "title="+title;
		if(b){
			$.ajax({
				url:"/result/write",
				data:title,
				success:function(data){
					alert("등록이 완료되었습니다.");
					$('#table_id').DataTable().ajax.reload();
					$("#resultTitle").val("");
				},error:function(error){
					alert("error : "+error);
				}
			});
			
		}else{
			return false;
		}
	}
	
	
	</script>
</body>
</html>