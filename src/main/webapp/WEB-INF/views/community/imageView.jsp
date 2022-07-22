<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../common/header.jsp"%>
<style>
.home-section{
width: 45%;
margin: auto;
}

.pop{
display: inline-block;
}
.home-section__img-wrap img{
width: 100%;
height: 50%;
}
.title{
margin: 1rem 0;
}
.title p{
font-size: 1.2rem;
color: black;
font-weight: 500;
}
.detail{
width: 100%;
display:flex;
justify-content: space-between;
margin: 3rem 0;
border-bottom: 2px solid #f0f0f0;
}
.detail dl{
display:flex;
justify-content: space-between;
}
.detail__item{
margin:0.5rem;
align-items: center;
color: #757575;
font-size: 0.9rem;
font-weight: 900;
}

.detail button{
font-size: 0.9rem;
}
.profile_image{
border-radius: 20px;
width: 2.8rem;
height: 2.8rem;
object-fit: cover;
margin: 0.8rem;
}

.home-section__details{
border-bottom: 2px solid #f0f0f0;
}
.profile_first button{
border: 1.5px solid #d8d8d8;
border-radius:5px;
width:6rem;
height: 2.5rem;
text-align: center;
font-size: 0.9rem;
font-weight: bold;
color: #757575;

}
.profile_first i{
color: #d8d8d8;
}
.second{
display: flex;
justify-content: space-between;
}
.icon{
position: absolute;
position:fixed;
top: 25%;
left:80%;
display: flex;
flex-wrap: wrap;
flex-direction: column; /*수직 정렬*/
align-items: center;
justify-content: center;
}

.icon i{
font-size: 1.7rem;
color: #d8d8d8;
margin:1rem;
padding: 1.5rem;
border: 1px solid #d8d8d8;
border-radius: 50%;
}
.comment{
margin: 1rem 0;
display: flex;
width: 100%;
}
.comment i{
margin-right:0.5rem;
font-size:2.5rem;
color: #d8d8d8;
width: 8%;
text-align: center;
}

.comment div{
width:90%;
}
.comment_input{
width: 100%;
height: 100%;
border:1px solid #d8d8d8;
border-radius: 5px;
color: #757575;
}

</style>
<c:set var="imageWriteByMember" value="${mypageMap.imageWriteByMember }" />
      <!-- 커뮤니티_사진_상세 페이지  -->
      <section class="container home-section">
      
      <!-- 커뮤니티 _ 사진  _ 무한 스크롤-->
         <div class="home-section__wrap main">
    
          <ul class="home-section__container pop" style="overflow-x: hidden; flex-flow:row wrap">
          
            <li class="home-section__item">
   
                 <!-- =사진  -->
                  <div class="home-section__img-wrap">
					
                   <img src="${contextPath}/communityDownload?boardId=${boardListView.boardId}&fileName=${boardListView.boardThumbnail}" alt="${boardListView.title}">
              
                  </div>
               
                   <!-- =내용-->
                   <div class="home-section__item__details title">
					    <p class="home-section__item__tit">${boardListView.description}</p>
                   </div>
          
            </li>
           
          </ul>
         </div> 
		
		<div class="detail">
         <dl class="detail_container ">
		   <dt class="detail__item"><p>조회수 ${boardListView.readCount}</p></dt>
		   <dt class="detail__item"><p>댓글</p></dt> 
		</dl>
		<button>신고하기</button>
		</div>
		 <!-- 프로필 -->
                  <div class="home-section__details second"> 
                   
                    <!-- =프로필 사진  -->
                   	<!-- board=boardId 에 있는 memberId -->
                   
                   <div class="profile__img-wrap">  

                   	<c:choose>
				       <c:when test="${not empty boardListView.memberDTO.profileImage}">
							<img class="profile_image" alt="profile"
							src="${contextPath}/profileDownload?memberId=${boardListView.memberDTO.memberId}&fileName=${boardListView.memberDTO.profileImage}">
						</c:when>
						<c:otherwise>
							<img class="profile_image" alt="profile_image"
							src="https://ifh.cc/g/BVmFxg.jpg">
						</c:otherwise>
					</c:choose>
					</div>
					
                   <div class="profile_first">
                   	<div class="profile">
                    <!-- =이름 -->
                    <p>${boardListView.memberDTO.nickname}</p>
                    <!-- =한줄 소개 -->	
                   	<h5>${boardListView.memberDTO.lineIntroduction }</h5>
               	     </div>  
  
                   	<!-- =버튼(>db) -->
                    <button class="follow" id="follow_bt"><i class="fa-solid fa-check"></i>
               	          팔로우</button>
                    </div> 
                    </div>
                    
                    <p class="detail__item">댓글</p>
                    	<div class="comment">
                           <i class="fa-solid fa-circle-user"></i>
                    		<div>
				              <input class="comment_input" type="text" 
				              placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다:)">
				            </div>
                  		</div>
        		</section>
        		
      			<nav>
      				<!-- =icon -->
                   <div class="icon">
					    <i class="far fa-heart"></i>
					    <i class="far fa-bookmark" style="padding:1.6rem 1.8rem;"></i> 
					    <i class="far fa-comment"></i>  
                   </div>
       			</nav>           
    

<%@include file="../common/footer.jsp"%>
