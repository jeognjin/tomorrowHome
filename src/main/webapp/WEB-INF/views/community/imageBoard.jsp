<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../common/header.jsp"%>

<c:set var="boardList" value="${boardList }"/>


<!-- style_imageBoard.css -->
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

/* 사진 모음 */

.home-section__img-wrap{
 width: 100%;
 height: 100%;
 object-fit: cover;
}

.main{
margin : 20px 0;
}

.title{
padding: 5px 0;
}

.title h4{
color:#524F4E;
font-size: 15px;
font-weight:900;
text-align: center;
}


.home-section__img-wrap {
  position: relative;
}

.home-section__img-wrap p{
  
  position: absolute;
  left:75%;
  top: 88%;
  font-size: 12px;
  font-weight:900;
  color: #fff;
 
}

.main h4{
margin : 5px 15px;
color: #757575;
}

.home-section__img-wrap i{
  
  position: absolute;
  left:90%;
  top: 80%;
  font-size: 30px;
  color: rgba(255,255,255, 0.9);
 
}

.icon{
margin: 10px;
display:flex;
justify-content: space-around;
padding: 0;
display:flex;

}

.icon i{
font-size: 25px;
color: #757575;
font-weight: 100;
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

                    	<a class="search__lists_entry" 
                    	href="${contextPath}/community/image?boardId=${boardList[i].boardId}&registDate=${boardList[i].boardThumbnail}">
                    	인기순</a>

                    	<a class="search__lists_entry" 
                    	href="${contextPath}/community/image?boardId=${boardList[i].boardId}&registDate=${boardList[i].registDate}">
                    	최신순</a>

  				</div>
			</div> 		
 		
		 </li>  
		 <li class="search_li ">
			<div class="dropdown">
  			<button class="search_Bt" 
  			onclick = "location.href = 
  			'${contextPath}/community/image?boardId=${boardList[i].boardId}&registDate=${boardList[i].housingType}' ">
  			주거형태</button>
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
  			<button class="search_Bt"
  			onclick = "location.href = 
  			'${contextPath}/community/image?boardId=${boardList[i].boardId}&registDate=${boardList[i].acreage}' "
  			>평수</button>
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
  			<button class="search_Bt"
  			onclick = "location.href = 
  			'${contextPath}/community/image?boardId=${boardList[i].boardId}&registDate=${boardList[i].interiorStyle}' "
  			>스타일</button>
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
			
  			<button class="search_Bt" id="dropdown_botton"
  			onclick = "location.href = 
  			'${contextPath}/community/image?boardId=${boardList[i].boardId}&registDate=${boardList[i].space}' "
  			>공간</button>
  			
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
      
      <!-- 커뮤니티 _ 사진  _ 무한 스크롤-->
      <article>
         <div class="home-section__wrap main">
          <ul class="home-section__container pop" style="overflow-x: hidden; flex-flow:row wrap">
          <c:forEach var="item" items="${boardList}" >
          
            <li class="home-section__item">
              <article>
                <a href="">
                  
                  <!-- =사진  -->
                  <div class="home-section__img-wrap">
                   
                 <!-- /community/imageview?n=[상품번호] : 주소 > 상품번호를 이용해 상품들을 중복없이 구분 -->
                    <%-- <a href="${contextPath }/community/imageView?n=${item.boardId}"><c:out value="${item.boardId}"/> --%>
                    
					<p>조회수 ${item.readCount}</p> 
                    <img src="${contextPath}/communityDownload?boardId=${item.boardId}&fileName=${item.boardThumbnail}" alt="${item.title}">
                    
                    </a> 
                  </div>
                  
                  <!-- =icon -->
                   <div class="icon">
					    <i class="far fa-heart"></i>
					    <i class="far fa-bookmark"></i> 
					    <i class="far fa-comment"></i>  
                   </div>
                  
                
                   <!-- =댓글 -->
                   <div class="home-section__item__details title">
					    <h4 class="home-section__item__tit">${item.description}</h4>
                   </div>
                  
                  <%-- 				<!-- 프로필 -->
                  <div class="home-section__details"> 
                   
                    <!-- =프로필 사진  -->
                    <div class="home-section__img-wrap">  
                    <img src="${contextPath}/communityDownload?boardId=${item.boardId}&fileName=${item.boardThumbnail}" alt="${item.title}">
                   	</div>
                    <!-- =이름 -->
                    <h4>${boardList[i].title }</h4>
                    <!-- =버튼(>db) -->
                    <h4>팔로우</h4>
              		<!-- =한줄 소개 -->	
                    <h4>${boardList[i].title }</h4>
                    
                  </div>  --%>

                </a>
              </article>
          
            </li>
            </c:forEach>
           
          </ul>
         </div> 
        </article>
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
          				let description = item.description;

          				console
          				let li = `<li class="home-section__item">
          	              <article>
          	                <a href="">

          	                  <div class="home-section__img-wrap">
									 <p>조회수 ${'${readCount}' }</p>
          	                    <img src="${contextPath}/communityDownload?boardId=${'${boardId}'}&fileName=${'${boardThumbnail}'}" >
          	                  </div>
        
          	              	/* <!-- =글 제목  -->
                          	<div class="home-section__item__details title">
       					    	<h4 class="home-section__item__tit">${'${title}'}</h4>
                          	</div> */
                          	
                          	<!-- =댓글  -->
                          	<div class="home-section__item__details title">
       					    	<h4 class="home-section__item__tit">${'${description}'}</h4>
                          	</div>
                          
          	                </a>
          	              </article>
          	            </li>`;
          			
						$(".pop").append(li);
					});
          		}
          	});
              
              
              
              
            }
        });
        </script>
      </section>

<%@include file="../common/footer.jsp"%>
