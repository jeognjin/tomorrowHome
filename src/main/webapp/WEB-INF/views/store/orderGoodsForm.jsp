<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@include file="../common/header.jsp"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    .order_title{
    font-size: 24px;
    line-height: 36px;
    color: rgb(0, 0, 0);
    font-weight: bold;
    margin: 40px 0px 20px;
    }
    .order_title_section1{
    margin-bottom: 50px;
    }
    .order_title_section2{
    margin: 0px auto;
    box-sizing: border-box;
    width: auto;
    max-width: 100%;
    min-height: 1px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 56px;
    border-bottom: 1px solid rgb(234, 235, 239);
    }

    .order_title_shipping_address{
    font-weight: bold;
    font-size: 20px;
    line-height: 30px;
    }

    .order_title_css1{
    flex: 1 0 0px;
    text-align: right;
    padding-left: 11px;
    font-size: 15px;
    line-height: 20px;
    color: rgb(41, 41, 41);
    transition: opacity 0.25s ease 0s;
    }
    .order_title_btn1{
    padding: 0px;
    background-color: transparent;
    font-size: 16px;
    line-height: 19px;
    color: rgb(53, 197, 240);
    transition: color 0.2s ease 0s;
    border: none;
    font-weight: bold;
    }
    .order_title_css2{
    overflow: hidden;
    margin: -3px;
    padding: 23px 3px 3px;
    box-sizing: border-box;
    }
    .order_title_section2{
    margin: 0px auto;
    box-sizing: border-box;
    width: auto;
    max-width: 100%;
    min-height: 1px;
    }
    .order_title_css3{
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    font-weight: bold;
    font-size: 18px;
    line-height: 20px;
    color: rgb(41, 41, 41);
    }
    .order_title_orderers_name{
    max-width: calc(100% - 80px);
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow-wrap: normal;
    overflow: hidden;
    }
    .order_title_member_adress{
    padding: 3px 8px;
    box-sizing: border-box;
    border: 1px solid rgb(53, 197, 240);
    border-radius: 100px;
    font-size: 12px;
    line-height: 14px;
    color: rgb(53, 197, 240);
    margin-left: 8px;
    user-select: none;
    }
    .order_title_adress{
    margin-top: 10px;
    font-size: 16px;
    line-height: 20px;
    color: rgb(41, 41, 41);
    word-break: break-word;
    }
    .order_title_information{
    display: flex;
    margin-top: 6px;
    font-size: 15px;
    line-height: 18px;
    color: rgb(117, 117, 117);
    }
    .order_title_name{
    max-width: calc(100% - 130px);
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow-wrap: normal;
    overflow: hidden;
    }
    .order_title_phone{
    width: 120px;
    margin-left: 8px;
    }
    .order_title_requests1{
    padding: 20px 10px 0px 0px;
    max-width: 642px;
    }
    .order_title_requests2{
    position: relative;
    display: inline-block;
    width: 100%;
    }
    .order_title_section4{
        padding-right: 30px;
        padding: 8px 15px 9px;
        display: inline-block;
    width: 100%;
    background-color: rgb(255, 255, 255);
    color: rgb(0, 0, 0);
    box-sizing: border-box;
    font-size: 15px;
    line-height: 21px;
    resize: none;
    appearance: none;
    margin: 0px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(219, 219, 219);
    border-image: initial;
    border-radius: 4px;
    transition: border-color 0.1s ease 0s, background-color 0.1s ease 0s;
    }
    .order_title_label1{
        display: flex;
    padding: 0px 0px 8px;
    }
    .order_info{
        display: flex;
    -webkit-box-align: center;
    align-items: center;
    width: 72px;
    font-size: 15px;
    line-height: 18px;
    color: rgb(117, 117, 117);
    white-space: pre-line;
    max-height: 40px;
    transition: color 0.25s ease 0s;
}
.order_input_container{
    flex: 1 0 0px;
    max-width: 270px;
}
.order_title_label2{
    display: flex;
    padding: 8px 0px;
}
.order_title_css4{
    flex: 1 0 0px;
    max-width: 570px;
}
.order_title_css5{
    display: flex;
}
.order_title_css6{
    display: flex;
    flex: 1 0 0px;
    width: 100%;
}
.order_title_css6{
    position: relative;
    flex: 1 0 0px;
    width: 100%;
    min-width: 270px;
}
.order_title_email{
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    width: 40px;
    height: 40px;
    line-height: 40px;
    font-size: 18px;
    color: rgb(41, 41, 41);
}
.order_title_email_form1{
    position: relative;
    flex: 1 0 0px;
    flex-wrap: wrap;
}
.order_title_email_form2{
    width: 100%;
}
.order_title_email_form3{
    padding-right: 30px;
    position: relative;
    flex: 1 0 0px;
} 
.order_title_email_form4{
    position: relative;
    width: 85px;
    margin-right: 8px;
}
</style>
<div>
    <div>
        <h1 class="order_title">주문/결제</h1>
        <section class="order_title_section1">
            <section class="order_title_section2">
                <div class="order_title_shipping_address">배송지</div>
                <div class="order_title_css1"></div>
                <button class="order_title_btn1">변경</button>
            </section>
            <div class="order_title_css2">
                <section class="order_title_section3">
                    <div class="order_title_css3">
                        <div class="order_title_orderers_name">김은진</div>
                        <div class="order_title_member_adress">기본배송지</div>
                    </div>

                    <div class="order_title_adress">경기 고양시 일산서구 성저로 25 (대화동) 성저마을6단지건영빌라</div>
                    <div class="order_title_information">
                        <div class="order_title_name">김은진</div>
                        <div class="order_title_phone">010-1234-5678</div>
                    </div>
                    <div class="order_title_requests1">
                        <div class="order_title_requests2">
                            <select class="order_title_section4">
                                <option value="0">배송시 요청사항을 선택해주세요<i class="fa-solid fa-sort-down"></i></option>
                                <option value="1">부재시 문앞에 놓아주세요</option>
                                <option value="2">배송전에 미리 연락주세요</option>
                                <option value="3">부재시 경비실에 맡겨 주세요</option>
                                <option value="4">무재시 전화주시거나 문자 남겨 주세요</option>
                                <option value="5">직접입력</option>
                            </select>
                            직접입력 만들기
                        </div>
                    </div>
                </section>
            </div>
        </section>

        <section class="order_title_section1">
            <section class="order_title_section2">
                <div class="order_title">주문자</div>
                <div class="order_title_css1"></div>
            </section>
            <div class="order_title_css2">
                <section class="order_title_section2">
                    <label class="order_title_label1">
                        <div class="order_info">이름</div>
                        <div class="order_input_container">
                            <input class="order_title_section4" name="name" maxlength="10" value="김은진">
                        </div>
                    </label>
                    <label class="order_title_label2">
                        <div class="order_info">이메일</div>
                        <div class="order_title_css4">
                            <div class="order_title_css5">
                                <div class="order_title_css6">
                                    <div class="order_title_css7">
                                        <input class="order_title_section4" name="name" maxlength="10" value="김은진">
                                    </div>
                                    <span class="order_title_email">@</span>
                                </div>
                                <div class="order_title_email_form1">
                                    <div class="order_title_email_form2">
                                        <div class="order_title_requests2">
                                            <select class="order_title_email_form3" name="" id="">
                                                <option value="">선택해주세요</option>
                                                <option value="0">naver.com</option>
                                                <option value="1">hanmail.net</option>
                                                <option value="2">gmail.com</option>
                                                <option value="3">kakao.com</option>
                                                <option value="4">nate.com</option>
                                                <option value="5">직접 입력</option>
                                            </select>
                                            직접입력란 만들기
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </label>
                    <label class="order_title_label2">
                        <div class="order_info">휴대전화</div>
                        <div class="order_input_container">
                            <div class="order_title_css5">
                                <div class="order_title_email_form4">
                                    <div class="order_title_requests2">
                                        <select class="order_title_section4" name="phone1" id="">
                                            <option value="disabled">선택</option>
                                            <option value="0">010</option>
                                            <option value="1">011</option>
                                            <option value="2">019</option>
                                        </select>
                                    </div>
                                </div>
                                <div order_input_container>
                                    <input class="order_title_section4" type="tel" placeholder="입력해주세요" size="1"
                                        maxlength="9" value="">
                                </div>
                            </div>
                        </div>
                    </label>
                </section>
            </div>
            <div>
                입력란 만들기
            </div>


        </section>
    </div>
</div>

<%@include file="../common/footer.jsp"%>