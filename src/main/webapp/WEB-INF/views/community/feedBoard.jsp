<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../common/header.jsp"%>

<c:set var="boardList" value="${boardList }"/>

<!-- style_imageBoard.css -->
<script src="https://kit.fontawesome.com/b31a3eeb45.js" crossorigin="anonymous"></script>

<style>
/* 팔로잉 피드 - x */
.feed_first {
    width: 70%;
    height: 8rem;
    color: #757575;
    padding: 50px 0 10px;
    margin: auto;
    background: #f0f0f0;
    border-radius: 5px;
    border:none;
    text-align: center;
    line-height: 22px;
    cursor: pointer;
    position: relative;
    font-size: 16px;
    font-weight: 600;
  }
  
  .feed_second {
    width: 70%;
    height: 8rem;
    color: black;
    padding: 50px 0 10px;
    margin: 10px auto;
    background: #fff;
    border-radius: 5px;
    border:none;
    text-align: center;
    line-height: 22px;
    cursor: pointer;
    position: relative;
  }
  .feed_second div:nth-child(1) {
  font-size: 1.5rem;
  margin-bottom: 0.5rem;
  font-weight: 700;
}

.feed_second div:nth-child(2) {
  font-size: 14px;
  font-weight: 500;
}


/* 사진 모음 */

.main{
width: 70%;
margin: 5rem auto;
}
.pop{
justify-content: space-between;
}
.home-section__item{
width: calc(100% / 1);
padding: 5px;
}

.home-section__img-wrap{
 width: 100%;
 height: 100%;
 object-fit: cover;
}


.home-section__img-wrap {
  position: relative;
}



</style>

      <!-- 커뮤니티 사진 메인 -->
      <section class="container home-section">
      
      <article>
         
         <div class="feed_first">팔로잉 피드가 비어있어요.</div>

         <div class="feed_second">
              <div>오늘의 집 유저를 팔로우 해보세요!</div>
              <div>유저의 최신 소식을 한 눈에 모아볼 수 있습니다.</div>                               
         </div>
         
        <%--  <div class="feed_second">
              <div> ${boardList[i].boardId}님을 위한 추천 유저</div>
              <div>  유저를 팔로우하고 새 소식을 확인하세요!</div>                               
         </div>
 --%>
      </article>
      <!-- 커뮤니티 _ 사진  _ 무한 스크롤-->
      <article>
         <div class="home-section__wrap main">
          <ul class="home-section__container pop" style="overflow-x: hidden; flex-flow:row wrap">
          
          <c:forEach var="item" items="${boardList}" >
          
            <li class="home-section__item">
              <article>

                  <!-- =사진  -->
                 <%--  <div class="home-section__img-wrap"> 
                 <!-- member 페이지로 이동 -->
                    <a href="${contextPath }/community/imageView?n=${item.boardId}"><c:out value="${item.title}"/>
                    <img src="${contextPath}/communityDownload?boardId=${item.boardId}&fileName=${item.boardThumbnail}" fileName=${item.boardThumbnail}">
                    </a> 
                  </div> --%>

              </article>
          
            </li>
            </c:forEach>
           
          </ul>
         </div> 
        </article>
        <script>
        
       /*  $(window).scroll(function() {
        	 console.log($(window).scrollTop());
        	console.log($(document).height() - $(window).height());
            console.log('--------------------------------------------------------------');
            
            if ($(window).scrollTop()+1 >= $(document).height() - $(window).height()) {
              /* console.log($(window).scrollTop());
              console.log($(document).height());
              console.log($(window).height()); */
              
              let li_num = $(".pop li").length;
              console.log("li>>>>>>>>>>", li_num);
              $.ajax({
          		url :'${contextPath }/community/imageScroll',
          		type : 'get',
          		dataType : 'json',
          		data : {
          			begin : li_num + 1,
          		},
          		success: function(data){
          			console.log("data", data);
          			$.each(data, function (index, item) {
          				let boardId = item.boardId; 
          				let boardThumbnail = item.boardThumbnail;
          				let readCount = item.readCount;
          				let title = item.title;

          				console
          				let li = `<li class="home-section__item">
          	              <article>
          	                <a href="">

          	                  <div class="home-section__img-wrap">
									 <p>조회수 ${'${readCount}' }</p>
          	                    <img src="${contextPath}/communityDownload?boardId=${'${boardId}'}&fileName=${'${boardThumbnail}'}" >
          	                  </div>
        
          	              	<!-- =글 제목  -->
                          	<div class="home-section__item__details title">
       					    	<h4 class="home-section__item__tit">${'${title}'}</h4>
                          	</div>
                          	
                          	<!-- =댓글  -->
                          	<div class="home-section__item__details title">
       					    	<h4 class="home-section__item__tit">${'${title}'}</h4>
                          	</div>
                          
          	                </a>
          	              </article>
          	            </li>`;
          			
						$(".pop").append(li);
					});
          		}
          	});
              
              
              
              
            }
        }); */
        </script>
      </section>

<%@include file="../common/footer.jsp"%>
