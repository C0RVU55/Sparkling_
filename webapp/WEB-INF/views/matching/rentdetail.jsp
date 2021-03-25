<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/style_1.css">
<!-- 지우지말것 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<!-- 지우지말것 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/header.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
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
	<!-- detail -->
	<div class="wrap">
		<div class="container">
			<!-- detail -->
			<div class="sm_1">
				<div class="sm_title">
					<h1>체육관 정보</h1>
					<div class="sm_title_back">
						<a href="">체육관대관 </a> > <a href="">체육관정보</a>
					</div>
				</div>
			</div>
			<section class="detail_info">

				<div class="detail_info_img">
					<div id="main_img_1" class="detail_info_first-img">
						<img class="detail_info_first-img_main" src="${pageContext.request.contextPath}/upload/${gAVo.gymimgList[0].gym_img_savename}" alt="">
					</div>
					<div class="detail_info_sub-imgs">
						<!-- **사진 총 6개만 받을 것 -->
						<!-- sub img 1pc -->
						<c:forEach items="${gAVo.gymimgList}" var="vo">
							<span style="cursor: pointer" class="detail_info_sub-a" data-no="${vo.gym_img_no}"><img class="detail_info_sub-img" src="${pageContext.request.contextPath}/upload/${vo.gym_img_savename}" alt=""></span>
						</c:forEach>
						<!-- sub img 1pc end-->


					</div>
				</div>
				<div class="detail_info_amenities">
					<div class="amenities">
						<div class="amenities_item1">
							<!-- 체육관 네임 -->

							<div class="amen_box">

								<p class="amenities_item1_title">${gAVo.gym_name}<span></span>
								</p>
								<div class="amenities_item1_skill">${gAVo.gym_event}</div>
							</div>

							<div class="amen_box2">
								<div>
									<div class="amenities_item1_sub5">${gAVo.gym_ph}</div>
									<!-- 주소 -->
									<div class="amenities_item1_sub">
										<span class="amenities_item1_sub2"> <i class="fas fa-map-marker-alt"></i>${gAVo.gym_address}</span>
									</div>
								</div>

							</div>

						</div>
						<div class="amenities_item2">
							<!-- 네글자만 쓰세요 -->
							<c:choose>
								<c:when test="${gAVo.conList[0].con_state eq '1'}">
									<div class="amenities_item2_sub">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload/paking.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>무료 주차</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="amenities_item2_sub" style="opacity: 0.2">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload/paking.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>무료 주차</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${gAVo.conList[1].con_state eq '1'}">
									<div class="amenities_item2_sub">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload//shower.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>샤워 가능</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="amenities_item2_sub" style="opacity: 0.2">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload//shower.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>샤워 가능</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${gAVo.conList[2].con_state eq '1'}">
									<div class="amenities_item2_sub">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload//glove.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>수건 대여</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="amenities_item2_sub" style="opacity: 0.2">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload//glove.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>수건 대여</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${gAVo.conList[3].con_state eq '1'}">
									<div class="amenities_item2_sub">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload/lacker.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>락커 대여</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="amenities_item2_sub" style="opacity: 0.2">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload/lacker.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>락커 대여</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${gAVo.conList[4].con_state eq '1'}">
									<div class="amenities_item2_sub">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload/glove.jpg" alt="">
										<div class="amenities_item2_sub_title">
											<div>글러브대여</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="amenities_item2_sub" style="opacity: 0.2">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload/glove.jpg" alt="">
										<div class="amenities_item2_sub_title">
											<div>글러브대여</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${gAVo.conList[5].con_state eq '1'}">
									<div class="amenities_item2_sub">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload//wear.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>운동복대여</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="amenities_item2_sub" style="opacity: 0.2">
										<img class="amenities_item2_sub_img" src="${pageContext.request.contextPath}/upload//wear.png" alt="">
										<div class="amenities_item2_sub_title">
											<div>운동복대여</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>



						</div>

					</div>
				</div>
			</section>
			<!-- detail end -->
			<!-- reservation -->
			<section class="reservation">
				<div class="reservation_day">
					<!--스와이프-->
					<div class="sp_box">
						<div class="swiper-button-prev rn_prev"></div>
						<div class="swiper-container rn_container">

							<div class="swiper-wrapper rn_wrapper">


								<div id="swiper-con" class="swiper-slide  rn_slide ">
									<div class="swiper-color box10 box-color" data-no="${gAVo.gym_no}" data-date="${gAVo.dayList[0].date}">
										<div>${gAVo.dayList[0].day }</div>
										<div>${gAVo.dayList[0].today }</div>
									</div>
								</div>
								<c:forEach items="${gAVo.dayList }" var="vo" begin="1">
									<div id="swiper-con" class="swiper-slide rn_slide ">
										<div class="swiper-color box10" data-no="${gAVo.gym_no}" data-date="${vo.date }">
											<div>${vo.day }</div>
											<div>${vo.today }</div>
										</div>
									</div>
								</c:forEach>


							</div>

						</div>

						<div class="swiper-button-next rn_next"></div>
					</div>
					<!--스와이프 end-->
				</div>
				<form action="${pageContext.request.contextPath }/sparring/writeForm" method="get">

					<div id="booking_list_0" class="reservation_hour">
						<!-- hour_item 1pc -->
						<c:forEach items="${gAVo.bookingList }" var="vo">
							<div id="hour_item" class="hour_item" data-no="${vo.booking_no }">
								<div>
									<div class="hour_item_clock">${vo.booking_start}~${vo.booking_end}</div>
									<div class="hour_item_price">

										<fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.booking_price/2}" />
										원
									</div>
								</div>

							</div>

						</c:forEach>
						<!-- hour_item 1pc end -->

					</div>
					<!-- 버튼 -->
					<div id="dae_footer">

						<div>

								<button id="sbm_btn1" class="dae_button_item" type="submit">
									<span class="dea_btn">대관하기</span>
								</button>

							<a href="/view/matching/대관하기.html">

								<button class="dae_button_item3" type="button">
									<span class="dea_btn">돌아가기</span>
								</button>
							</a>
						</div>

					</div>
					<div id="hidden12">
						<input type="hidden" name="bookingno" value="0">
					</div>
					<input type="hidden" name="user_no" value="${authUser.user_no }">
					<input type="text" name="subnum" value="${param.subnum }">
					
					<input type="text" name="bbuyno" value="${param.bbuyno }">
				</form>
				<!-- 버튼 end -->
			</section>
			<!-- reservation end -->
			<!-- notice -->
			<section class="notice">
				<div class="notice_title">
					<h1>체육관 공지사항</h1>
				</div>
				<div class="notice_text">
					<p class="time_notice">◈ 체육관 운영시간은 ${gAVo.gym_time} 입니다</p>
					<p>◈모든 매치는 현재 매치 중, 이동 시 마스크 필수 착용입니다</p>
					<p>■${gAVo.gym_notice}</p>

				</div>
				<br>

			</section>
			<!-- notice end-->
			<!-- map -->
			<section class="dae_map">
				<h1>위치</h1>
				<div id="map" style="width: 500px; height: 400px;"></div>
			</section>
			<!-- map end -->

			<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
			<!--//footer//-->
		</div>
	</div>

	<!-- 스와이퍼 -->
	<script>
        var mySwiper = new Swiper('.swiper-container', {
            slidesPerView: 7,

            //loop: true,

            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',

            },
        });
    </script>
	<!-- api -->


</body>
<script type="text/javascript">
	//대관선택 안하고 버튼클리시 경고
	$("#sbm_btn1").on("click",function(){
		
		var bookingno = $("[name='bookingno'").val();
		
		if(bookingno == 0){
			alert("대관 시간을 선택해주세요");
			
			return false;
		}
		return true;
	});
	
	
	
	//대관하나 클릭하면 색깔변경
	$(".reservation_hour").on("click",".hour_item",function(){
		
		console.log($(this));
		
		$(".hour_item").css('background-color','');
		$(".hour_item").css('color','');
		$(".hour_item").css('font-weight','');
		
			// active class 제거
		$(this).css('background-color','rgb(216, 200, 220)');
		$(this).css('color','white');
		$(this).css('font-weight','bold');
		
		var bookingNo1 = $(this).data("no");
		console.log(bookingNo1);
		
		hiddenBookingNo(bookingNo1);
	});
	//날짜 클릭하면 색변경
	
	$(".swiper-slide").on("click",".swiper-color",function(){
		
		console.log("클릭");
		
		if ($(".swiper-color").hasClass("box-color")) { 
			// active class 제거
			  $(".swiper-color").removeClass("box-color");
			       }
			       else {
		}
		$(this).addClass("box-color");
		
		var date = $(this).data("date");
		var gymNo = $(this).data("no");
		console.log(date);
		console.log(gymNo);
		$.ajax({

			url : "${pageContext.request.contextPath }/sparring/api/bookinglist", //컨트롤러의 url과 파라미터
			type : "post", // 겟 포스트
			//contentType : "application/json",
			data : {
				date : date,
				gymNo : gymNo
				
			},

			//dataType : "json",
			success : function(bookingL) { //성공시
				console.log(bookingL);
				
				var size = $(bookingL).length;
				
				$("#booking_list_0").html(" ");
				console.log(size);
				for(var i = 0; i <size; i++){
					booking(bookingL[i]);
				}
				
			},
			error : function(XHR, status, error) { //실패
				console.error(status + " : " + error);
			}
		});
		
	});


	//메인 사진 변경
	$(".detail_info_sub-a").on("click",function(){
		console.log("클릭");
		var gymImgNo = $(this).data("no");
		
		$.ajax({

			url : "${pageContext.request.contextPath }/sparring/api/gymimgone", //컨트롤러의 url과 파라미터
			type : "post", // 겟 포스트
			//contentType : "application/json",
			data : {
				gymImgNo : gymImgNo
				
			},

			//dataType : "json",
			success : function(gIVo) { //성공시
				console.log(gIVo);
			
				mainImg(gIVo);
			},
			error : function(XHR, status, error) { //실패
				console.error(status + " : " + error);
			}
		});
		
		
		
	});
	
	
	//메인이미지 변경
	function mainImg(gIVo){
		str = "";
		str += "<img class='detail_info_first-img_main' src='${pageContext.request.contextPath}/upload/"+gIVo.gym_img_savename+"' alt=''>";
		
		$("#main_img_1").html(str);
	}
	
	//부킹리스트 변경
	function booking(bookingVo){
		var price2 = bookingVo.booking_price;
		
		price2 = price2 / 2;
		
		price2 = addComma(price2);
		
		str='';
		str += '<div class="hour_item" data-no="'+bookingVo.booking_no+'">';
		str += '	<div>';
		str += '		<div class="hour_item_clock">';
		str += '			    '+bookingVo.booking_start+'~'+bookingVo.booking_end;
		str += '		</div>';
		str += '		<div class="hour_item_price">';
		str += '			'+price2+' 원';
		str += '		</div>';
		str += '	</div>';
		str += '</div>';
		
		$("#booking_list_0").append(str);
	}
	
	function addComma(price2) {
		  var regexp = /\B(?=(\d{3})+(?!\d))/g;
		  return price2.toString().replace(regexp, ',');
		}
    function hiddenBookingNo(bookingNo1){
    	$("#hidden12").html(" ");
    	
    	str='<input type="hidden" name="booking_no" value="'+bookingNo1+'"/>'
    	
    	$("#hidden12").append(str);
    }
</script>

</html>
