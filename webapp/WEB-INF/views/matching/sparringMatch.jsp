<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- 지우지말것 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <!-- 지우지말것 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/style_1.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    <script src="https://kit.fontawesome.com/5a9452f10d.js" crossorigin="anonymous"></script>
    
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
        <!-- container -->
        <div class="container">
            <!-- title -->
            <div class="sm_0">
                <div class="sm_title">
                    <h1>스파링 신청서</h1>
                    <div class="sm_title_back"><a href="">스파링매치</a>><a href="">스파링신청서</a></div>
                </div>
            </div>
            <!-- title end -->
            <!-- rule -->
            <div class="rule">
                <h3 class="rule_info">Rule</h3>
                <!-- 룰 정보 여기넣기 -->
                <h1 class="">대관정보에서 넣기</h1>
            </div>
            <!-- rule end -->
            <!-- post_host -->
            <section class="post_host">
                <div class="host_items1">

                    <div>
                        <div class="post_host_item">
                            <!-- 글주인 이름 -->
                            <h1 class="post_host_item1">
                                <span>
                                    ${map.bBuyVo.nickname}
                                </span>
                            </h1>
                            <!-- 글주인이름 end -->
                            <div class="post_host_item2">
                                <div class="post_host_item2_1">
                                    <div class="post_host_imgbox">
                                        <img src="${pageContext.request.contextPath }/upload/${map.bBuyVo.user_photo }.jpg" alt="">

                                    </div>
                                    <div class="post_host_spa-profile">
                                        <p class="post_host_spa-profile_coment">"${map.bBuyVo.word }"</p>
                                        <div class="post_host_spa-profile_spa">
                                            주특기는 
                                            <span>
                                            <c:forEach items="${map.bBuyVo.eventList}" var="eventvo">
                                            	<c:choose>
                                            		<c:when test="${eventvo.eventName == 1 }">
                                            				복싱
                                            		</c:when>
                                            		<c:when test="${eventvo.eventName == 2 }">
                                            				,킥복싱
                                            		</c:when>
                                            		<c:when test="${eventvo.eventName == 3 }">
                                            				,종합격투기
                                            		</c:when>
                                            		<c:when test="${eventvo.eventName == 4 }">
                                            				,주짓수
                                            		</c:when>
                                            	</c:choose>
                                            </c:forEach>
                                            
                                            </span> 
                                            입니다
                                            <br>
                                            <span>스파클링</span>에서
                                            <span>${map.bBuyVo.scoreCount}번의 스파링</span>을 했고
                                            <span>${map.bBuyVo.rate}% 승률</span>을 자랑합니다
                                        </div>
                                    </div>
                                </div>
                                <div class="post_host_item2_2">
                                    <div class="post_host_spac">
                                        <h3>프로필</h3>
                                        <div class="post_host_spac_profile">
                                            <p>${map.bBuyVo.career}</p>
                                            <p>라이트 헤비급</p>

                                            <p>${map.bBuyVo.height}cm</p>
                                            <p>${map.bBuyVo.weight}kg</p>
                                            <p>전공: ${map.bBuyVo.major}</p>
                                            <!-- 경력 for문 -->
                                            <c:forEach items="${map.bBuyVo.recordList }" var="recordvo">
	                                            <p>${recordvo.recordType}</p>
	                                            <p>${recordvo.recordDate}
	                                            <c:choose>
                                            		<c:when test="${recordvo.recordEvent == 1 }">
                                            				복싱
                                            		</c:when>
                                            		<c:when test="${recordvo.recordEvent == 2 }">
                                            				,킥복싱
                                            		</c:when>
                                            		<c:when test="${recordvo.recordEvent == 3 }">
                                            				,종합격투기
                                            		</c:when>
                                            		<c:when test="${recordvo.recordEvent == 4 }">
                                            				,주짓수
                                            		</c:when>
                                            	</c:choose>
	                                             ${recordvo.recordName}</p>
	                                           
                                            </c:forEach>
                                            <!-- 대관 x -->
                                            <c:if test="${map.bBuyVo.booking_no == 0}">
                                            	<p class="p_dae">원하는 장소 : 중랑구 상봉동</p>
                                            </c:if>
                                            <!-- 대관 x end -->
                                        </div>
                                        <c:choose>
	                                        <c:when test="${map.bBuyVo.booking_no == 0 }">
	                                        	<a href="${pageContext.request.contextPath }/sparring/rent"><button class="dae_button_item2"><span class="dea_btn2">대관후 대결신청</span></button></a>
	                                        </c:when>
	                                        <c:otherwise>
	                                       	 	<a href="${pageContext.request.contextPath }/sparring/writeForm?user_no=${authUser.user_no}&booking_no=${map.bBuyVo.booking_no}&subnum=1&bbuyno=${map.bBuyVo.b_buy_no}&bbuyuser=${param.userno}"><button class="dae_button_item2"><span class="dea_btn2">대결신청</span></button></a>
	                                        </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="host_middle">
                    
                    <div class="host_middle_vs">vs</div>
                    
                </div>
                <div class="host_items3">

                    <div>
                        <!-- item -->
                        <div class="post_host_item_victim">
                            <!-- 상대방 이름 -->
                            <h1 class="post_host_item1">
                                <span>
                                    <!-- 상대방이름 넣는곳 -->
                                    빈센조
                                </span>
                            </h1>
                            <!-- 상대방 end -->
                            <!-- 글주인이름 end -->
                            <!---->
                            <div class="post_host_item2">
                                <div class="post_host_item2_1">
                                    <div class="post_host_imgbox">
                                        <img src="/image/img/빈센.jpg" alt="">

                                    </div>
                                    <div class="post_host_spa-profile">
                                        <p class="post_host_spa-profile_coment">"연습 많이했습니다 잘부탁드려요 언제나 최선을 다합니다"</p>
                                        <div class="post_host_spa-profile_spa">
                                            주특기는 <span>복싱</span> 입니다
                                            <br>
                                            <span>스파클링</span>에서
                                            <span>2132번의 스파링</span>을 했고
                                            <span>99% 승률</span>을 자랑합니다
                                        </div>
                                    </div>
                                </div>
                                <div class="post_host_item2_2">
                                    <div class="post_host_spac">
                                        <h3>프로필</h3>
                                        <div class="post_host_spac_profile">
                                            <p>프로</p>
                                            <p>라이트 헤비급</p>
                                            
                                            <p>180cm</p>
                                            <p>70kg</p>
                                            <p>전공: 이클립스대학 체육학</p>
                                            <!-- 경력 for문 -->
                                            <p>아마추어선수권 금메달</p>
                                            <p>청소년 대회 입상</p>
                                            <p>동네 권투대회 3위</p>
                                            <!-- 대관 x -->
                                            <p class="p_dae"></p>
                                            <!-- 대관 x end -->
                                        </div>
                                        <!-- 글 주인의 경우에만 보임 -->
                                        <a href=""><button class="dae_button_item2"><span class="dea_btn2">수락하기</span></button></a>
                                        <!-- 글 주인의 경우에만보임 end -->

                                        <!-- 글 주인의 경우에만 보임 -->
                                        <!-- 상대가 대관했을 경우만 열어줌 -->
                                        <a href=""><button class="dae_button_item3"><span class="dea_btn2">거절하기</span></button></a>
                                        <!-- 상대가 대관했을 경우만 열어줌 end-->
                                        <!-- 글 주인의 경우에만보임 end -->
                                    </div>
                                </div>
                            </div>
                            <div class="chell">
                                <div class="ss_box">
                                    <div class="swiper-button-prev ss_prev"></div>
                                    <div class="swiper-container ss_con">

                                        <div class="swiper-wrapper ss_wrapper">
                                            <div class="swiper-slide ss_slide">

                                                <div><i class="fas fa-user"></i></div>
                                                <div>빈센조</div>

                                            </div>

                                            <div class="swiper-slide ss_slide">

                                                <div><i class="fas fa-user"></i></div>
                                                <div>중랑구면목동</div>

                                            </div>

                                            <div class="swiper-slide ss_slide">

                                                <div><i class="fas fa-user"></i></div>
                                                <div>덤벼라세상아</div>

                                            </div>
                                            <div class="swiper-slide ss_slide">

                                                <div><i class="fas fa-user"></i></div>
                                                <div>크레용신짱</div>

                                            </div>
                                            <div class="swiper-slide ss_slide">

                                                <div><i class="fas fa-user"></i></div>
                                                <div>갓챔티모</div>

                                            </div>


                                        </div>

                                    </div>

                                    <div class="swiper-button-next ss_next"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!--  -->

            </section>
            <!-- post_host end-->
            <!-- detail -->
            <section class="detail_info">
                <div class="detail_info_img">
                    <div class="detail_info_first-img"><img class="detail_info_first-img_main" src="/image/img/rental.jpeg"
                            alt=""></div>
                    <div class="detail_info_sub-imgs">
                        <!-- **사진 총 6개만 받을 것 -->
                        <!-- sub img 1pc -->
                        <a class="detail_info_sub-a" href=""><img class="detail_info_sub-img" src="/image/img/rental.jpeg"
                                alt=""></a>
                        <!-- sub img 1pc end-->
                        <!-- sub img 1pc -->
                        <a class="detail_info_sub-a" href=""><img class="detail_info_sub-img" src="/image/img/rental.jpeg"
                                alt=""></a>
                        <!-- sub img 1pc end-->
                        <!-- sub img 1pc -->
                        <a class="detail_info_sub-a" href=""><img class="detail_info_sub-img" src="/image/img/rental.jpeg"
                                alt=""></a>
                        <!-- sub img 1pc end-->
                        <!-- sub img 1pc -->
                        <a class="detail_info_sub-a" href=""><img class="detail_info_sub-img" src="/image/img/rental.jpeg"
                                alt=""></a>
                        <!-- sub img 1pc end-->
                        <!-- sub img 1pc -->
                        <a class="detail_info_sub-a" href=""><img class="detail_info_sub-img" src="/image/img/rental.jpeg"
                                alt=""></a>
                        <!-- sub img 1pc end-->
                        <!-- sub img 1pc -->
                        <a class="detail_info_sub-a" href=""><img class="detail_info_sub-img" src="/image/img/rental.jpeg"
                                alt=""></a>
                        <!-- sub img 1pc end-->

                    </div>
                </div>
                <div class="detail_info_amenities">
                    <div class="amenities">
                        <div class="amenities_item1">
                            <!-- 체육관 네임 -->
                            <div class="amen_box">
                                <p class="amenities_item1_title">팀파이터<span> 체육관</span></p>
                                <div class="amenities_item1_skill">종합격투기</div>
                            </div>
                            
                            <div class="amenities_item1_sub5">010-2725-7878</div>
                            <!-- 주소 -->
                            <div class="amenities_item1_sub">

                                <span class="amenities_item1_sub2"><i class="fas fa-map-marker-alt"></i>서울시 중랑구
                                    상봉동</span>
                            </div>
                        </div>
                        <div class="amenities_item2">
                            <!-- 네글자만 쓰세요 -->
                            <div class="amenities_item2_sub">
                                <img class="amenities_item2_sub_img" src="/image/img/paking.png" alt="">
                                <div class="amenities_item2_sub_title">
                                    <div>무료 주차</div>
                                </div>
                            </div>
                            <div class="amenities_item2_sub">
                                <img class="amenities_item2_sub_img" src="/image/img/shower.png" alt="">
                                <div class="amenities_item2_sub_title">
                                    <div>샤워 가능</div>
                                </div>
                            </div>
                            <div class="amenities_item2_sub">
                                <img class="amenities_item2_sub_img" src="/image/img/glove.png" alt="">
                                <div class="amenities_item2_sub_title">
                                    <div>용품 대여</div>
                                </div>
                            </div>
                            <div class="amenities_item2_sub">
                                <img class="amenities_item2_sub_img" src="/image/img/wear.png" alt="">
                                <div class="amenities_item2_sub_title">
                                    <div>운동복대여</div>
                                </div>
                            </div>
                            <div class="amenities_item2_sub">
                                <img class="amenities_item2_sub_img" src="/image/img/wear.png" alt="">
                                <div class="amenities_item2_sub_title">
                                    <div>운동복대여</div>
                                </div>
                            </div>
                            <div class="amenities_item2_sub">
                                <img class="amenities_item2_sub_img" src="/image/img/wear.png" alt="">
                                <div class="amenities_item2_sub_title">
                                    <div>운동복대여</div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </section>
            <!-- detail end -->

            <!-- notice -->
            <section class="notice">
                <div class="notice_title">
                    <h1>체육관 공지사항</h1>
                </div>
                <div class="notice_text">
                    <p class="time_notice"> ◈ 체육관 운영시간은 09:00~22:00 입니다</p>
                    사진 보면 아시겠지만,
                    요즘은 복싱체육관이라고 해서
                    샌드백만 있는 게 아니에요.
                    러닝머신부터 시작해서~
                    기본적인 웨이트 장비들, 바벨, 덤벨, 아령 등 갖춰져있구요
                    부위별 운동 가능한 머신들은 다 구비되어있어서
                    입맛대로 운동하실 수 있습니다.

                    복싱도 체력과 근력이 받쳐줘야 할 수 있는 운동이니까
                    근력운동도 함께 해주면 좋겠죠?
                    [출처] 대구 칠곡 3지구 MS복싱 체육관 소개글-파파운드의 복싱 이야기|작성자 파파운드
                </div>
                <br>
                
            </section>
            <!-- notice end-->
            <!-- map -->
            <section class="dae_map">
                <h1>위치</h1>
                <div></div>
            </section>
            <!-- map end -->
            <!-- 버튼 -->
            <div id="dae_footer">

                <div>
                    <a href="/view/matching/스파링 매칭.html">
                        <button class="dae_button_item3"><span class="dea_btn">돌아가기</span></button>
                    </a>
                </div>

            </div>
            <!-- 버튼 end -->
            <c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
			<!--//footer//-->
        </div>
    </div>
    <script>
        var mySwiper = new Swiper('.swiper-container', {
            slidesPerView: 2,

            //loop: true,

            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',

            },
        });

    </script>
</body>

</html>