<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../common/header.jsp"%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니 | 예쁜템들 모여사는 내일의 집</title>
    <!-- css -->
<link rel="stylesheet" href="${contextPath }/resources/css/style.css">

</head>
<body>


    <div class="cart_empty">
        <div class="cart_empty_content">
            <img calss= "cart_empty_content_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/assets/163703569663018673.png" alt="장바구니가 비었습니다.">
            <a class = "cart_empty_content_button" href="/store" style="background-color: #35c5f0;">상품 담으러 가기</a>
        </div>
    </div>

<%@include file="../common/footer.jsp"%>

</body>

