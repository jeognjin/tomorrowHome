<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../common/header.jsp"%>

<c:set var="boardList" value="${boardList }"/>

<!-- style_imageBoard.css -->
<script src="https://kit.fontawesome.com/b31a3eeb45.js" crossorigin="anonymous"></script>

<style>

/* 조건 검색 버튼 */
.serch{
margin: 20px;
display:flex;
}
.search_li {
padding: 5px;
cursor: pointer;
}

.first{
width: calc(40% / 5);
padding: 5px;
}

.second{
padding: 10px;
}

.search_Bt {
    width: 90px;
    height: 20px;
    color: #757575;
    padding: 8px 0 10px;
    margin-bottom:10px;
    background: #f0f0f0;
    border-radius: 5px;
    border:none;
    text-align: center;
    line-height: 22px;
    cursor: pointer;
    position: relative;
    font-size: 14px;
    font-weight: 700;
  }
  
  .search_Bt:hover {
    background: #d8d8d8;
  }

.search_Bt::after {
    font-family: "Font Awesome 5 Free";
    font-weight: 600;
    content: "\f078";
    margin-left: 0.5rem;
  }


.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 999;
  transition: 1s;
  background: #fff;
  border: 1px solid #dbdbdb;
  border-radius: 6px;
  box-shadow: 0 4px 10px 0 rgb(209, 209, 209);
/*   margin: 5px 0; */
}

/*  .dropdown-content::before {
    content: "";
    display: inline-block;
    width: 10px;
    height: 10px;
    position: relative;
    background: #fff;
    border-top: 1px solid #dbdbdb;
    border-left: 1px solid #dbdbdb;
    top: -10px;
    left: 2rem;
    z-index: 999;
    transform: rotate(45deg);
  }
 */
  
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  content: "";
 
}


.search__lists_entry {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  flex-flow: column nowrap;
  background: #f5f5f5;
  padding: 0.5rem 1rem;
  margin: 0;
  border-radius: 5px;
  cursor: pointer;
  background: white;
  color: #757575;
  font-size: 14px;
  font-weight: bold;

}

.search__lists_entry div:nth-child(1) {
  color: #757575;
  font-size: 0.9rem;
  font-weight: 900;
  margin-bottom: 0.5rem;
  
}

.search__lists_entry:hover {
  color: #757575;
  background: rgba(53, 197, 240, 0.1);

}

.dropdown:hover .dropdown-content {display: block;}

/* 집들이 사진 모음 */

.pop li{
 flex: 1 1 calc(100% / 3);
}

.home-section__img-wrap{
 width: 100%;
 height: 200px;
 object-fit: cover;
}

.main{
margin : 20px 0;
}

.main h4{
margin : 5px 15px;
color: #757575;
}

.title h4{
color:#524F4E;
font-size: 17px;
font-weight:900;
text-align: center;
}

 .home-section__img-wrap {
  position: relative;
}

.home-section__img-wrap i{
  
  position: absolute;
  left:90%;
  top: 80%;
  font-size: 30px;
  color: rgba(255,255,255, 0.9);
 
}
.home-section__img-wrap img{
border-radius: 10px;
width:100%;
height: 100%;
}

.profile__img-wrap{
width: 2rem;
height: 2rem;
display: flex;
color: #757575;
font-size:0.9rem;
font-weight: 900;
}

.profile_image{
border-radius: 20px;
width:100%;
height: 100%;
object-fit: cover;
margin: 0.5rem;
}

.profile{
display: flex;

}
.profile p{
color: #757575;
font-size:0.9rem;
font-weight: 900;
}

.profile_first{
margin:0.9rem auto;
display: inline-block;
}

.home-section__details{
margin:0.2rem;
text-align: center;
}
</style>

      <!-- 커뮤니티 사진 메인 -->
      <section class="container home-section">
      
      <!--조건 검색 나열-->
      <article>
      <ul class="home-stories__content search">   
      <li class="search_li first">
			<div class="dropdown">
  			<button class="search_Bt">정렬</button>
  				<div class="dropdown-content">

                    	<div class="search__lists_entry">인기순</div>

                    	<div class="search__lists_entry">최신순</div>

  				</div>
			</div> 		
 		
		 </li>  
		 <li class="search_li ">
			<div class="dropdown">
  			<button class="search_Bt">주거형태</button>
  				<div class="dropdown-content">

                    	<div class="search__lists_entry">원룸&오피스텔</div>

                    	<div class="search__lists_entry">아파트</div>

                    	<div class="search__lists_entry">빌라&연립</div>

                    	<div class="search__lists_entry">단독주택</div>

                    	<div class="search__lists_entry">사무공간</div>

                    	<div class="search__lists_entry">상업공간</div>

                    	<div class="search__lists_entry">기타</div>
    
  				</div>
			</div> 		
 		
		 </li>
		  <li class="search_li first">
			<div class="dropdown">
  			<button class="search_Bt">평수</button>
  				<div class="dropdown-content">

                    	<div class="search__lists_entry">10평 미만</div>

                    	<div class="search__lists_entry">10평대</div>

                    	<div class="search__lists_entry">20평대</div>

                    	<div class="search__lists_entry">30평대</div>

                    	<div class="search__lists_entry">40평대</div>

                    	<div class="search__lists_entry">50평대 이상</div>

  				</div>
			</div> 		
 		
		 </li>
		 
		 
		 <li class="search_li ">
			<div class="dropdown">
  			<button class="search_Bt">스타일</button>
  				<div class="dropdown-content">

                    	<div class="search__lists_entry">모던</div>

                    	<div class="search__lists_entry">북유럽</div>

                    	<div class="search__lists_entry">빈티지</div>

                    	<div class="search__lists_entry">내추럴</div>

                    	<div class="search__lists_entry">프로방스&로맨틱</div>

                    	<div class="search__lists_entry">클래식&앤틱</div>

                    	<div class="search__lists_entry">한국&아시아</div>

                    	<div class="search__lists_entry">유니크</div>   
  				</div>
			</div> 		
 		
		 </li>
		 <li class="search_li ">
		 <div class="dropdown">
			
  			<button class="search_Bt" id="dropdown_botton">공간</button>
  			
  				<div class="dropdown-content">

                    	<div class="search__lists_entry">원룸</div>

                    	<div class="search__lists_entry">거실</div>

                    	<div class="search__lists_entry">침실</div>

                    	<div class="search__lists_entry">주방</div>

                    	<div class="search__lists_entry">욕실</div>

                    	<div class="search__lists_entry">아이방</div>

                    	<div class="search__lists_entry">드레스룸</div>

                    	<div class="search__lists_entry">서재&작업실</div>

                    	<div class="search__lists_entry">베란다</div>

                    	<div class="search__lists_entry">사무공간</div>

                    	<div class="search__lists_entry">상업공간</div>

                    	<div class="search__lists_entry">가구&소품</div>

                    	<div class="search__lists_entry">현관</div>

                    	<div class="search__lists_entry">외관&기타</div>  
  				</div>
			</div> 
			
		 </li>		
        </ul>
      </article>
      <!-- 버튼 설정    -->
		<script type="text/javascript">
		$(document).ready(function(){
	

	  		$(".search__lists_entry").click(function(){
		 		$(this).parents(".dropdown").children(".search_Bt").text($(this).text())
		 		.css("color", "#757575");
		  
		  });
	  
		});

</script>
      </article>
      
      <!-- 커뮤니티 _ 집들이  _ 무한 스크롤-->
      <article>
         <div class="home-section__wrap main">
          <h4>전체 : ${total}</h4>
          <ul class="home-section__container pop" style="overflow-x: hidden; flex-flow:row wrap">
          <c:forEach var="item" items="${boardList}" >
          
            <li class="home-section__item">
              <article>
           
                  <!-- =사진  -->
                  <div class="home-section__img-wrap"> 
                    <a href="${contextPath }/community/imageView?boardId=${item.boardId}"> 
                    <i class="fas fa-bookmark"></i> 
                    <img src="${contextPath}/communityDownload?boardId=${item.boardId}&fileName=${item.boardThumbnail}" alt="집들이  이미지">
                  </div>
                  
                  <!-- =글 제목  -->
                   <div class="home-section__item__details title">
					    <h4 class="home-section__item__tit">${item.title}</h4>
                   </div>
                  
                  <!-- 프로필 -->
                  <div class="home-section__details"> 
                   
                    <!-- =프로필 사진  -->
                   	<!-- board=boardId 에 있는 memberId -->
                   
                   <div class="profile__img-wrap">  

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
					<!-- =이름 -->
                    <p>${item.memberDTO.nickname}</p>
					</div>
					
                   <div class="profile_first"> 
                   
                   	<div class="profile">
                    <p>조회수 ${item.readCount}&nbsp&middot&nbsp</p> 
               	     </div> 
                    </div> 
                        
                  </div>

              
              </article>
          
            </li>
            </c:forEach>
           
          </ul>
        </div> 
        <script>
        
        $(window).scroll(function() {
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
          		url :'${contextPath }/community/housewarmingScroll',
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
          				let description = item.description;
          				let memberId = item.memberDTO.memberId;
          				let profileImage = item.memberDTO.profileImage;
          				let nickname = item.memberDTO.nickname;
          				let lineIntroduction = item.memberDTO.lineIntroduction; 
          				let src = "";
          				if ( profileImage == null ) {
	    						src="https://ifh.cc/g/BVmFxg.jpg";
	                   		} else {
	                   			src="${contextPath}/profileDownload?memberId="+ memberId +"&fileName=" +profileImage;
	                   		}

          				console
          				let li = `<li class="home-section__item">
          	              <article>
          	               
          	                  <div class="home-section__img-wrap">
          	                  <a href="${contextPath }/community/imageView?boardId=${'${boardId}'}">
          	                    <i class="fas fa-bookmark"></i> 
          	                    <img src="${contextPath}/communityDownload?boardId=${'${boardId}'}&fileName=${'${boardThumbnail}'}" >
          	                  </div>
        
          	              	<!-- =글 제목  -->
                          	<div class="home-section__item__details title">
       					    	<h4 class="home-section__item__tit">${'${title}'}</h4>
                          	</div>
                          
                          	<div class="profile__img-wrap"> 
                            
                            <img class="profile_scroll" src= ${'${src}'} alt = ""  
                            style="border-radius: 20px;
                            width: 2rem;
                            height: 2rem;
                            display: flex;
                            color: #757575;
                            font-size:0.9rem;
                            font-weight: 900;"/>
                            			<!-- =이름 -->
                            <p>${'${nickname}'}</p>
         					</div>
         					
         					<div class="profile_first"> 
                           	
                           	<div class="profile">
                            <p>조회수 ${'${readCount}'}&nbsp&middot&nbsp</p> 
                       	     </div> 
                            </div>
          	                
          	              </article>
          	            </li>`;
          			
						$(".pop").append(li);
					});
          		}
          	});
              
              
              
              
            }
        });
        </script>
        </article>
      </section>

<%@include file="../common/footer.jsp"%>
