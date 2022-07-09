<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<style>
ul, li {
   display: block;
}

a {
	display: block;
   cursor: pointer;
}

</style>
 
<!-- jQuery 스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

   <div class="category-side-bar" >
      <section class="category-side-bar-item" style=" float: left;
max-width: 160px">
         <c:forEach var="categoryMenu" items="${storeCategoryList}">
            
               <c:if test="${categoryMenu.LVL == 1 }">
                  <h2 class="category-side-bar-title">
                     <a href="storeCategory?category=${categoryMenu.GOODS_CATEGORY_ID }">${categoryMenu.CATEGORY_NAME}</a>
                  </h2>
               </c:if>
               
                  <c:if test="${categoryMenu.LVL == 2 }">
                     
                        <div class="catecory_second category-side-bar-list">
                        <a href="storeCategory?category=${categoryMenu.GOODS_CATEGORY_ID }">${categoryMenu.CATEGORY_NAME}</a>
                           <button class="dropdown-btn category_title" title="펼치기">
                               <i class="fa fa-angle-down" aria-hidden="true"></i>
                           </button>
                        </div>
                     
                     <div class="dropdown-container category_title">
                                     
                           <c:forEach var="categoryMenu2" items="${storeCategoryList}">
                              <c:if test="${categoryMenu.GOODS_CATEGORY_ID == categoryMenu2.HIGH_LEVEL }">
                           		<a style="display: block;" href="storeCategory?category=${categoryMenu2.GOODS_CATEGORY_ID }">${categoryMenu2.CATEGORY_NAME}</a>
                           </c:if>
                           </c:forEach>
                       </div>
                  </c:if>
            
         </c:forEach>
               <ul class="category-side-bar-other" style=" display: block;">
            
            <li><a href="/">주방용품</a></li>
            <li><a href="/">데코·식물</a></li>
            <li><a href="/">수납·정리</a></li>
            <li><a href="/">생활용품</a></li>
            <li><a href="/">생필품</a></li>
            <li><a href="/">공구·DIY</a></li>
            <li><a href="/">인테리어시공</a></li>
            <li><a href="/">반려동물</a></li>
            <li><a href="/">캠핑용품</a></li>
            <li><a href="/">실내운동</a></li>
            <li><a href="/">유아·아동</a></li>
            <li><a href="/">렌탈</a></li>
            <li><a href="/">식품</a></li>
         </ul>
      </section>

      <script>
         var dropdown = document.getElementsByClassName("dropdown-btn");
         var i;

         for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function() {
               this.classList.toggle("active");
               var dropdownContent = this.parentNode.nextElementSibling;
               if (dropdownContent.style.display === "block") {
                  dropdownContent.style.display = "none";
               } else {
                  dropdownContent.style.display = "block";
               }
            });
         }
      </script>


   </div>
