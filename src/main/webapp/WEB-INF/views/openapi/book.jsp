<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@include file="../common/header.jsp"%>
<style>
.book_recommend_all_wrap {
	width: 100%;
	max-width: 1100px;
	margin: 20px auto;
}
/* .book_recommend_wrap{
	display: flex;
} */
.book_recommend_image {
	height: 150px;
	width: 120px;
	padding: 20px 20px;
}

.book_recommend_title {
	width: 30%;
}

.book_recommend_title p {
	display: table-cell;
	text-align: center;
	font-size: 1.2rem;
}

.book_recommend_content {
	width: 50%;
}

a {
	cursor: pointer;
}

.book_recommend_wrap_ajax {
	width: 100%;
	display: flex;
	border-bottom: 1px solid rgba(131, 136, 136, 0.5);
	font-family: 'Nanum Myeongjo', sans-serif;
	align-items: center;
}

.book_page_wrap {
	display: flex;
	justify-content: space-between;
}

.book_page_input {
	align-items: center;
	height: 40px;
	border: 1px solid #dbdbdb;
	border-radius: 0.3rem;
	width: 40px;
	text-align: center;
}

.book_page_search_keyword {
	display: none;
}
</style>









<div class="book_recommend_all_wrap">
	<div class="book_page_wrap">
		<div class="book_page_search_keyword">
			<input class="book_page_input" type="text" name="query" id="query"
				value="인테리어" >
		</div>
		<div class="book_page_number">
			페이지 번호 : <input class="book_page_input" type="number" name="page"
				id="page" value="1">
		</div>
		<div class="book_page_size">
			<input class="book_page_input" type="number" name="size" id="size"
				value="10">개씩 보기
		</div>
	</div>
	<div class="book_recommend_wrap" id="book_recommend_wrap"></div>
</div>


<script type="text/javascript">
	$(document).ready(function() {
		ajax_load();
		
		$("#page").keydown(function(keyNum){
			if(keyNum.keyCode == 13){ 
				ajax_load();	
			}
		});
		
		$("#size").keydown(function(keyNum){
			if(keyNum.keyCode == 13){ 
				ajax_load();	
			}
		});
		
	}); //ready

	function ajax_load() {
		let query = $("#query").val();
		let page = $("#page").val();
		let size = $("#size").val();
		let str = "";

		$.ajax({
			type : 'get',
			url : "https://dapi.kakao.com/v3/search/book?target=title",
			headers : {
				"Authorization" : "KakaoAK 6e740626fbb8ffa18666ca0cf54249ff"
			},
			dataType : "json",
			data : {
				"query" : query,
				"page" : page,
				"size" : size
			},
			success : function(data) {
				$('#book_recommend_wrap').empty();
				$(data.documents).each(function() {
					let image = this.thumbnail;
					let title = this.title;
					let content = this.contents;
					let url = this.url;
					str += "<div class='book_recommend_wrap_ajax'>";
					str += "<div class='book_recommend_img'>";
					str += "<a href='"+url+"'>";
					str += "<img class='book_recommend_image' src='"+image+"'></a></div>";
					str += "<div class='book_recommend_title'>";
					str += "<p>" + title + "</p></div>";
					str += "<div class='book_recommend_content'>";
					str += "<p>" + content
							+ "</p></div></div>";
				});
				$("#book_recommend_wrap").append(str);
			},// end success
			error : function(xhr, ajaxSettings, thrownError) {
				console.log(xhr);
				console.log(thrownError);
				alert("수정하는데 오류가 발생하였습니다.");
			}
		}); //end ajax 
	}
</script>




















<%@include file="../common/footer.jsp"%>