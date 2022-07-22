<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@include file="../common/header.jsp"%>

<c:set var="boardList" value="${boardList }"/>

<!-- style_imageBoard.css -->
<script src="https://kit.fontawesome.com/b31a3eeb45.js" crossorigin="anonymous"></script>

<style>
.first_main{
}
.home-section{

width: 38%;
margin:auto;
}

.icon{
margin: 1rem;
display:flex;
justify-content: space-around;
padding: 1rem;
display:flex;
border-bottom: 2px solid #f0f0f0;
}

.icon i{
font-size: 30px;
color: #757575;
font-weight: 100;
}

.feed_first {
    width:100%;
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
    width: 100%;
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
   border-radius: none;
}
.profile_image{
border-radius: 20px;
width: 2.8rem;
height: 2.8rem;
object-fit: cover;
margin: 0.8rem;
}
.home-section__img-wrap img{
 width: 100%;
 height: 100%;
 object-fit: cover;
}

.profile {
color:#524F4E;
font-size: 15px;
font-weight:500;
}

.profile p{
padding-top:1rem;
text-align: center;
}
.title{
padding: 2rem 0;
}

.title h4{
color:#524F4E;
font-size: 15px;
font-weight:900;
text-align: center;
}
.profile__img-wrap{
display: flex;
}

.home-section__details{
background: white;
padding: 0 0.5rem;

}

</style>

      <!-- 커뮤니티 사진 메인 -->
      <section class="first_main">
      
      <article class="container home-section">
				 <!-- 로그인 (o/x) -->
				<c:if test="${authUser != null}">
				<!-- (팔로우 x) -->
				<c:if test="${followDTO == null}">
					<c:if test="${boardList == null}">
					 	<div class="feed_first">팔로잉 피드가 비어있어요.</div>
						<div class="feed_second">
				              <div>${authUser.nickname }님을 위한 추천 유저</div>
				              <div>유저를 팔로우하고 새 소식을 확인하세요!</div>                               
	         			</div>
         			</c:if>		
          			</c:if>
         			<!-- (팔로우 o) -->
        			 <c:if test="${boardList != null}">
         				<c:forEach var="item" items="${boardList}" >

			              <article>
			                  <!-- 프로필 -->
			                  <div class="home-section__details"> 
			                   
			                    <!-- =프로필 사진  -->
			                   	<!-- board=boardId 에 있는 memberId -->
			                   
			                   <div class="profile__img-wrap">  
			                    <%-- <img class="profile_image" alt="profile"
									src="${contextPath}/profileDownload?memberId=${item.memberDTO.memberId}&fileName=${item.memberDTO.profileImage}"> --%>
			            
			                   	<c:choose>
							       <c:when test="${not empty item.memberDTO.profileImage}">
										<img class="profile_image" alt="profile"
										src="${contextPath}/profileDownload?memberId=${item.memberDTO.memberId}&fileName=${item.memberDTO.profileImage}">
									</c:when>
									<c:otherwise>
										<img class="profile_image" alt="profile_image"
										src="https://ifh.cc/g/BVmFxg.jpg">
									</c:otherwise>
								</c:choose>
								<div class="profile">
			                    <!-- =이름 -->
			                    <p>${item.memberDTO.nickname} </p>
			                    <!-- =작성일-->
			                    <p><fmt:formatDate pattern = "yyyy-MM-dd" value="${item.registDate}"/></p>     
			                    </div>
								</div>
		
			                   
			                    <a href="${contextPath }/community/imageView?boardId=${item.boardId}">
			                  <!-- =사진  -->
			                  <div class="home-section__img-wrap">
			                   
			                 <!-- /community/imageview?n=[상품번호] : 주소 > 상품번호를 이용해 상품들을 중복없이 구분 -->    
			                    <img src="${contextPath}/communityDownload?boardId=${item.boardId}&fileName=${item.boardThumbnail}" alt="${item.title}">
			                    
			                    </a> 
			                  </div>
	                
			                   <!-- =댓글 -->
			                   <div class="home-section__item__details title">
								    <h4 class="home-section__item__tit">${item.description}</h4>
			                   </div>
			                   
			                    <!-- =icon -->
			                   <div class="icon">
								    <i class="far fa-heart"></i>
								    <i class="far fa-bookmark"></i> 
								 <a href="${contextPath }/community/imageView?boardId=${item.boardId}"> <i class="far fa-comment"></i></a> 
			                   </div>
			
			                </a>
			                 </div> 
			              </article>

            			</c:forEach>
        			 </c:if>
				</c:if>
			
				
				<c:if test="${authUser == null}">
				<div class="feed_first">팔로잉 피드가 비어있어요.</div>
				<div class="feed_second">
			              <div>오늘의 집 유저를 팔로우 해보세요!</div>
			              <div>유저의 최신 소식을 한 눈에 모아볼 수 있습니다.</div>                               
         			</div>
			
				</c:if>

      </article>

        
      </section>
 
<%@include file="../common/footer.jsp"%>
