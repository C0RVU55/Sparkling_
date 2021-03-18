<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/store.css">
</head>

<body>
    
<div class="wrap">
    <div class="container">
        
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	    <!--//header//-->

    </div><!--//container-->
</div><!--//wrap-->


<!--내용-->
<div class="wrap">
    <div class="container">

        <!--상단여백-->
        <div class="searching_item"><!----></div>

        <!--결제완료 체크 이미지-->
        <div class="pay_cp">
            <div class="ico_cp">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/check-icon.png" class="ico_check"> 
            </div>
        </div>

        <!--주문 완료 메세지-->
        <div class="pay_tit">
            <strong>
                <span>주문이 완료되었습니다.</span>
            </strong>
        </div>

        <!--버튼-->
        <div class="btn_area">
            <div class="btn_pay">
                <button type="submit"><a href="../경환/buylist.html" style="font-size: 16px; color: #ffffff;">구매내역 보기</a></button>
            </div> 
            <div class="btn_pay">
                <button type="submit"><a href="./storeList.html" style="font-size: 16px; color: #ffffff;">스토어 홈 가기</a></button>
            </div>    
        </div> 
    </div><!--//container-->
</div><!--//wrap-->

<div class="wrap">
    <div class="container">
        <!--추천상품 리스트-->
        <div class="goods-add-product">
            <h3 class="goods-add-product-title">매칭상품 추천 리스트(멘트 생각해야함)</h3>

            <div class="goods-add-product-wrapper __slide-wrapper" data-slide-item="5">
                <button class="goods-add-product-move goods-add-product-move-left __slide-go-left">왼쪽으로 슬라이드 이동</button>
                <button class="goods-add-product-move goods-add-product-move-right __slide-go-right">오른쪽으로 슬라이드 이동</button>
                <div class="goods-add-product-list-wrapper" style="height:320px">
                    <ul class="goods-add-product-list __slide-mover">
                        <li class="goods-add-product-item __slide-item">
                            <div class="goods-add-product-item-figure">
                            <a href="" target="_blank">
                                <img src="${pageContext.request.contextPath}/assets/image/store_img/rec_178_230.jpg" class="goods-add-product-item-image" onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
                            </a>
                            </div>
                            <div class="goods-add-product-item-content">
                                <div class="goods-add-product-item-content-wrapper">
                                    <p class="goods-add-product-item-name">[상봉동] 인파이터 클럽</p>
                                    <p class="goods-add-product-item-price">1인 50,000원</p>
                                </div>
                            </div>
                        </li>
                        <li class="goods-add-product-item __slide-item">
                            <div class="goods-add-product-item-figure">
                            <a href="" target="_blank">
                                <img src="${pageContext.request.contextPath}/assets/image/store_img/rec_178_230.jpg" class="goods-add-product-item-image" onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
                            </a>
                            </div>
                            <div class="goods-add-product-item-content">
                                <div class="goods-add-product-item-content-wrapper">
                                    <p class="goods-add-product-item-name">[상봉동] 인파이터 클럽</p>
                                    <p class="goods-add-product-item-price">1인 50,000원</p>
                                </div>
                            </div>
                        </li>
                        <li class="goods-add-product-item __slide-item">
                            <div class="goods-add-product-item-figure">
                            <a href="" target="_blank">
                                <img src="${pageContext.request.contextPath}/assets/image/store_img/rec_178_230.jpg" class="goods-add-product-item-image" onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
                            </a>
                            </div>
                            <div class="goods-add-product-item-content">
                                <div class="goods-add-product-item-content-wrapper">
                                    <p class="goods-add-product-item-name">[상봉동] 인파이터 클럽</p>
                                    <p class="goods-add-product-item-price">1인 50,000원</p>
                                </div>
                            </div>
                        </li>
                        <li class="goods-add-product-item __slide-item">
                            <div class="goods-add-product-item-figure">
                            <a href="" target="_blank">
                                <img src="${pageContext.request.contextPath}/assets/image/store_img/rec_178_230.jpg" class="goods-add-product-item-image" onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
                            </a>
                            </div>
                            <div class="goods-add-product-item-content">
                                <div class="goods-add-product-item-content-wrapper">
                                    <p class="goods-add-product-item-name">[상봉동] 인파이터 클럽</p>
                                    <p class="goods-add-product-item-price">1인 50,000원</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div><!--goods-add-product-wrapper __slide-wrapper-->
        </div> <!--goods-add-product-->

    </div><!--//container-->
</div><!--//wrap-->

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!--//footer//-->




</body>
</html>