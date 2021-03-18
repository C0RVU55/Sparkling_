<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/style_1.css">
    <script src="https://kit.fontawesome.com/5a9452f10d.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

<body>
    <!-- Header -->

    <div class="wrap">
        <div class="container">
            	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
			<!--//header//-->
        </div>
    </div>
    <!-- Header end -->

    <!-- wrap -->
    <div class="wrap">
        <div class="container">
            <div class="sm">
                <h1 class="sm_title">주문서</h1>
            </div>
            <!-- 결제하기 -->
            <div class="paykind_title2">
                장바구니
            </div>
            <div class="payment_line2"></div>


            <section class="sf_section">
                <form class="sf_form">
                    <div id="cartItemList" class="only_pc">

                        <div>
                            <div class="cart_item_1">
                                <div class="cart_select">
                                    <div class="inner_select">
                                        <label class="check">
                                            <input type="checkbox" name="checkAll" checked>
                                            <span class="ico"></span>
                                            전체선택
                                        </label>
                                        <a href="" class="btn_delete">
                                            선택삭제
                                        </a>
                                    </div>
                                </div>
                                <!-- 아이템 1개 -->
                                <div class="box room">
                                    <ul class="list">
                                        <li>
                                            <div class="item_13">
                                                <label class="check" for="">
                                                    <input type="checkbox" id="" name="chkItem" data-item-id=""
                                                        data-item-no="" data-item-parent-no="" checked>
                                                    <span class="ico"></span>
                                                </label>

                                                <div class="name">
                                                    <div class="inner_name">
                                                        <a href="" class="package">
                                                            상봉 팀파이터
                                                            <!-- 대관시에만 사용 -->
                                                            <p>21/04/05 18:00~20:00</p>
                                                            <!-- 대관시에만 사용 -->
                                                        </a>
                                                        <div class="info"></div>
                                                    </div>
                                                </div>

                                                <div class="goods">
                                                    <a href="" class="thumb"
                                                        style="background-image: url(../images/글러브.jpg);">상품이미지</a>
                                                    <div class="price">
                                                        <div class="in_price">
                                                            <!-- 대관시 1인 가격 -->
                                                            <span class="selling">1인 25,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <!-- 대관시 총 가격 -->
                                                            <span class="cost">
                                                                총 50,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <p class="noti"></p>
                                                        </div>
                                                        <!--
                                                        <div class="in_price">
                                                            <span class="selling">25,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <span class="cost">
                                                                25,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <p class="noti"></p>
                                                        </div>
                                                    -->

                                                    </div>
                                                </div>

                                                <button type="button" class="btn_delete" data-item-id="" data-item-no=""
                                                    data-type="">상품삭제</button>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!-- 아이템 1개 END -->
                                 <!-- 아이템 1개 -->
                                 <div class="box room">
                                    <ul class="list">
                                        <li>
                                            <div class="item_13">
                                                <label class="check" for="">
                                                    <input type="checkbox" id="" name="chkItem" data-item-id=""
                                                        data-item-no="" data-item-parent-no="" checked>
                                                    <span class="ico"></span>
                                                </label>

                                                <div class="name">
                                                    <div class="inner_name">
                                                        <a href="" class="package">
                                                            상봉 팀파이터
                                                            <!-- 대관시에만 사용 -->
                                                            <p>21/04/05 18:00~20:00</p>
                                                            <!-- 대관시에만 사용 -->
                                                        </a>
                                                        <div class="info"></div>
                                                    </div>
                                                </div>

                                                <div class="goods">
                                                    <a href="" class="thumb"
                                                        style="background-image: url(../images/글러브.jpg);">상품이미지</a>
                                                    <div class="price">
                                                        <div class="in_price">
                                                            <!-- 대관시 1인 가격 -->
                                                            <span class="selling">1인 25,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <!-- 대관시 총 가격 -->
                                                            <span class="cost">
                                                                총 50,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <p class="noti"></p>
                                                        </div>
                                                        <!--
                                                        <div class="in_price">
                                                            <span class="selling">25,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <span class="cost">
                                                                25,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <p class="noti"></p>
                                                        </div>
                                                    -->

                                                    </div>
                                                </div>

                                                <button type="button" class="btn_delete" data-item-id="" data-item-no=""
                                                    data-type="">상품삭제</button>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!-- 아이템 1개 END --> <!-- 아이템 1개 -->
                                <div class="box room">
                                    <ul class="list">
                                        <li>
                                            <div class="item_13">
                                                <label class="check" for="">
                                                    <input type="checkbox" id="" name="chkItem" data-item-id=""
                                                        data-item-no="" data-item-parent-no="" checked>
                                                    <span class="ico"></span>
                                                </label>

                                                <div class="name">
                                                    <div class="inner_name">
                                                        <a href="" class="package">
                                                            상봉 팀파이터
                                                            <!-- 대관시에만 사용 -->
                                                            <p>21/04/05 18:00~20:00</p>
                                                            <!-- 대관시에만 사용 -->
                                                        </a>
                                                        <div class="info"></div>
                                                    </div>
                                                </div>

                                                <div class="goods">
                                                    <a href="" class="thumb"
                                                        style="background-image: url(../images/글러브.jpg);">상품이미지</a>
                                                    <div class="price">
                                                        <div class="in_price">
                                                            <!-- 대관시 1인 가격 -->
                                                            <span class="selling">1인 25,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <!-- 대관시 총 가격 -->
                                                            <span class="cost">
                                                                총 50,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <p class="noti"></p>
                                                        </div>
                                                        <!--
                                                        <div class="in_price">
                                                            <span class="selling">25,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <span class="cost">
                                                                25,000
                                                                <span class="won">원</span>
                                                            </span>

                                                            <p class="noti"></p>
                                                        </div>
                                                    -->

                                                    </div>
                                                </div>

                                                <button type="button" class="btn_delete" data-item-id="" data-item-no=""
                                                    data-type="">상품삭제</button>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!-- 아이템 1개 END -->


                            </div>
                        </div>

                    </div>


                </form>
                <div class="sf_modal">
                    <!-- 대관의 경우 가리기 -->
                    <div class="sf_address">
                        <h3 class="sf_address_item1"><i class="modal_icon fas fa-map-marker-alt"></i>배송지</h3>
                        <div class="sf_address_item2">
                            <p class="sf_address_item2_text">
                                서울시 강남구
                            </p>
                            <a href="" class="sf_address_item2_fix">배송지 변경</a>
                        </div>
                    </div>
                    <!-- 대관의 경우 가리기 end -->
                    <div>
                        <div class="sf_box1">
                        <div class="sf_price">
                            <div class="sf_amount">
                                <dt class="sf_tit">상품금액</dt>
                                <dd class="price_sf">
                                    <span class="num">25,000</span>
                                    <span class="won">원</span>
                                </dd>
                            </div>
                            <div class="sf_amount">
                                <dt class="sf_tit">할인금액</dt>
                                <dd class="price_sf">
                                    <span class="num minus">0</span>
                                    <span class="won">원</span>
                                </dd>
                            </div>

                            <div class="sf_amount">
                                <dt class="sf_tit">배송비</dt>
                                <dd class="price_sf">
                                    <span class="num">3,000</span>
                                    <span class="won">원</span>
                                </dd>
                            </div>

                            
                        </div>
                    
                        <div class="sf_amount_lst">
                            <dt class="sf_tit sf_tit_lst">결제금액</dt>
                            <dd class="price_sf price_sf_lst">
                                <span class="num">28,000</span>
                                <span class="won">원</span>
                            </dd>
                        </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- //cart_page// -->



            <!--middle-->
            <!--

                        
                        <div class="stuff_info">
                            <div class="stuff_info_img">
                                <img src="img/rental.jpeg" alt="">
                            </div>
                            <div class="stuff_info_details">
                                <div class="stuff_info_details_remove"><a href=""><button>x</button></a></div>
                                <p class="stuff_info_details_name">상봉팀파이터</p>
                                <p class="stuff_info_details_name_sub">2021년 4월 5일 18:00~21:00</p>
                                <div class="stuff_price_sub">
                                    중랑구 사가정로 64-33번지
                                </div>
                                <div class="stuff_price">
                                    <div class="stuff_price_pay1">
                                        40,000원 / 2인
                                    </div>
                                    <div class="stuff_price_pay2">
                                        20,000원
                                    </div>
                                </div>
                            </div>
                        </div>
                    -->

            <!-- 상품 1개 for문 end -->

        </div>

        </section>
        <div class="paykind-section">
            <div class="paykind_title">
                결제방식
            </div>
        </div>
        <section class="paykind">
            <form action="/view/store/payment_cp.html">
                <table class="paykind_table">
                    <tr>
                        <th>카드결제</th>
                        <td class="table_card">
                            <input class="table_pay-radio0" type="radio" name="paymod">
                            <div class="table_pay-radio_select">
                                <select name="" id="">
                                    <option value="">신한카드</option>
                                    <option value="">우리카드</option>
                                    <option value="">기업카드</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>토스결제</th>
                        <td>
                            <input class="table_pay-radio" type="radio" name="paymod">
                            <img src="img/toss.png" alt="">
                        </td>
                    </tr>
                    <tr>
                        <th>카카오페이</th>
                        <td>
                            <input class="table_pay-radio" type="radio" name="paymod">
                            kakao
                        </td>
                    </tr>
                    <tr>
                        <th>휴대폰결제</th>
                        <td><input class="table_pay-radio" type="radio" name="paymod"> 휴대폰</td>

                    </tr>
                    <tr></tr>
                </table>
                <div class="btn_payment">
                    <button class="" type="submit">결제하기</button>
                    
                </div>
                
            </form>
            <a href="/view/matching/스파링 매칭.html">
                <button class="dae_button_item10"><span class="dea_btn">취소하기</span></button>
            </a>
        </section>
        
    </div>
    <!-- payment end -->
	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
			<!--//footer//-->
    </div>
    <!-- container end-->
    </div>
    <!-- wrap end -->
</body>

</html>
