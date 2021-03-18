<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>매칭프로필관리</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/style_1.css">
</head>

<body>

	<div class="wrap">

		<div class="container">

			<div class="header">
				<div class="header_logo"><a href=""><img src="${pageContext.request.contextPath }/assets/image/로고.png"></a></div>
				<div class="header_menu">
					<ul>
						<li id="no1"><a href="../matching/스파링 매칭.html"><span>스파링 매치</span></a></li>
						<li id="no2"><a href="../store/storeList.html"><span>스토어</span></a></li>
					</ul>
				</div>
				<div class="header_icon">
					<div><a href="./buylist.html"><img src="${pageContext.request.contextPath }/assets/image/마이페이지 남성_글러브.png"></a></div>
					<div><a href="./html/alarm.html"><img src="${pageContext.request.contextPath }/assets/image/bell_2.png"></a></div>
					<div><a href="./html/cart.html"><img src="${pageContext.request.contextPath }/assets/image/cart3.png"></a></div>
				</div>
			</div>
			<!--//header//-->

			<div class="content_matchingInfo_header">
				<div class="c_ma_title">
					프로필 입력
				</div>
			</div>

			<div class="line_1"></div>
			<!-- //line -->
			<!--//content_matchingInfo_header//-->
			<div class="middle">

				
				<!-- content_notice -->
				<div class="content_notice">
					<div class="c_notice_1">
						<div class="middle_img">
							<img class="middle_glove" src="${pageContext.request.contextPath }/assets/image/img/glove1.jpg" alt="">
							<!-- <img class="middle_glove" src="/image/img/glove2.jpg" alt=""> -->
						</div>
						<h2 class="content_notice_h2"><span>정확한</span> 작성은 <br>
							<span>정확한</span> 매칭에 <br>
							<span>정확성</span>을 올립니다!
						<h2>
					</div>
				</div>
				<!-- content_notice end -->

				<div class="content_mypage">




					<div class="form2_container">

						<div class="sparring_ex_box">
							<h2 class="sparring_ex_title">스파링 경험이 5회 이상이십니까?</h2>
							<input class="sparring_ex"  id="co" type="radio" name="sparring_ex" value="네"> <label for="co">네</label>
							<input class="sparring_ex2" id="co2" type="radio" name="sparring_ex"><label for="co2"> 아니요</label>
						</div>
						<div class="con_match">


							<div class="content_bottom">

								<!-- 입력폼 → 매칭프로필저장 -->
								<form action="${pageContext.request.contextPath}/sparring/write" method="post">

									<table class="insert_matcingInfo">
										<colgroup>
											<col style="width: 100px">
											<col style="width: 100px">
											<col style="width: 600px">
										</colgroup>
										<!-- 종목선택 -->
										<tr class="basic">
											<td colspan="2"><label for="prod_cate">매치불러오기</label></td>
											<td>
												<div class="">
													<select id="exer_cate">
														<option selected>이전 매치</option>
														<option>21/03/04</option>
													</select>
												</div>
											</td>
										</tr>
										<!-- 종목선택 end -->

										<!-- 대관없이 매칭글시에만 보임-->
										<!-- 종목선택 -->
										<tr class="basic">
											<td colspan="2"><label for="prod_cate">스파링종목</label></td>
											<td>
												<div class="">
													<select id="exer_cate" name="profileGymEvent">
														<option selected>종목 선택</option>
														<option value="복싱">복싱</option>
														<option value="킥복싱">킥복싱</option>
														<option value="주짓수">주짓수</option>
														<option value="종합격투기">종합격투기</option>
													</select>
												</div>
											</td>
										</tr>
										<!-- 종목선택 end -->
										<!-- 원하는 시간 입력 -->
										<tr class="basic">
											<td colspan="2"><label for="prod_cate">원하는 장소</label></td>
											<td>
												<div class="">
													<button class="insert_btn_10">검색</button>
												</div>
											</td>
										</tr>
										<!-- 원하는 시간 입력 end -->
										<tr class="basic">
											<td colspan="2"><label for="prod_cate">원하는 일시</label></td>
											<td>
												<div class="form_day_10">
													<label for="day"></label><input class="day_textbox" type="text" placeholder="21/03/08" name="day" value="">
												</div>
												<div class="">
													<select id="exer_cate" name="time">
														<option selected>시간선택</option>
														<option value="9:00~12:00">9:00~12:00</option>
														<option value="12:00~15:00">12:00~15:00</option>
														<option value="15:00~18:00">15:00~18:00</option>
														<option value="18:00~21:00">18:00~21:00</option>
														<option value="21:00~24:00">21:00~24:00</option>
														<option value="새벽시간">새벽시간</option>
														<option value="시간상관없음">시간상관없음</option>
													</select>
												</div>
											</td>
										</tr>
										<!-- 원하는 시간 입력 end -->
										<!-- 종목선택 end -->
										<!-- 대관없이 매칭글시에만 보임 end-->
										<tr class="basic">
											<td colspan="2"><label for="prod_cate">주특기</label></td>
											<td>
												<div class="chk_box">
													<input type='checkbox' id="pro_chk" name='eventName' value='1' />복싱
													<input type='checkbox' id="pro_chk" name='eventName' value='2' />킥복싱
													<input type='checkbox' id="pro_chk" name='eventName' value='3' />종합격투기
													<input type='checkbox' id="pro_chk" name='eventName' value='4' />주짓수
												</div>
											</td>
										</tr>
										<!-- //주특기 -->

										<tr class="basic">
											<td colspan="2"><label for="prod_name">신장</label></td>
											<td><input type="text" id="prod_name" placeholder="신장을 입력해주세요." name="height"></td>
										</tr>
										<!-- //신장 -->

										<tr class="basic">
											<td colspan="2"><label for="prod_price">체중</label></td>
											<td><input type="text" id="prod_price" placeholder="체중을 입력해주세요."  name="weight"></td>
										</tr>
										<!-- //체중 -->

										<tr class="basic">
											<td colspan="2"><label for="brand_name">경력</label></td>
											<td>
												<div class="chk_box">
													<input type='radio' id="pro_chk" name='career' value='프로' />프로
													<input type='radio' id="pro_chk" name='career'
														value='아마추어' />아마추어
												</div>
											</td>
										</tr>
										<!-- //경력 -->

										<tr class="basic">
											<td colspan="2"><label for="brand_name">전공</label></td>
											<td>
												<div class="chk_box">
													<input type='radio' id="pro_chk" name='chk_major' value='pro' />무
													<input type='radio' id="pro_chk" name='chk_major' value='ama' />유
													<input type="text" id="prod_price" placeholder="전공을 입력해주세요." name="major" value="">
												</div>
											</td>
										</tr>
										<!-- //전공 -->

										<tr class="basic">
											<td colspan="2"><label for="exer_cate">최근운동</label></td>
											<td>
												<div class="content_product_insert_select_box">
													<select id="exer_cate" name="recentlyExer">
														<option selected >최근운동</option>
														<option value="주5회">주 5회 이상</option>
														<option value="주3회">주 3회 이상</option>
														<option value="주1회">주 1회 이상</option>
														<option value="월1회">월 1회 이상</option>
														<option value="3달">3달 이상 안함</option>
														<option value="6달">6달 이상 안함</option>
													</select>
												</div>
											</td>
										</tr>
										<!-- //최근운동 -->
										<!--스파링횟수-->
										<tr class="basic">
											<td colspan="2"><label for="exer_cate">실전 스파링횟수</label></td>
											<td>
												<div class="content_product_insert_select_box">
													<input class="text_sparring_exp" type="text" name="exp"> 회
												</div>
											</td>
										</tr>
										<!-- 반복단 -->
										<tr class="basic">
											<td><label for="prod_cate">공식기록</label></td>
											<td><label for="prod_cate">대회분류</label></td>
											<td>
												<div class="content_product_insert_select_box">
													<select id="exer_cate" name="recordType">
														<option selected>대회분류</option>
														<option value="지역">지역</option>
														<option value="전국">전국</option>
														<option value="세계">세계</option>
													</select>
												</div>
											</td>
										</tr>
										<!-- //공식기록 - 대회분류 -->

										<tr class="basic">
											<td><label for="prod_cate"></label></td>
											<td><label for="prod_cate">대회명</label></td>
											<td>
												<div class="content_product_insert_select_box">
													<input type="text" id="prod_price" placeholder="대회명을 입력해주세요." name="recordName" >
												</div>
											</td>
										</tr>
										<!-- //공식기록 - 대회분류 -->

										<tr class="basic">
											<td><label for="prod_cate"></label></td>
											<td><label for="prod_cate">종목</label></td>
											<td>
												<div class="content_product_insert_select_box">
													<select id="prod_cate" name="recordEvent">
														<option selected>종목</option>
														<option value="1">복싱</option>
														<option value="2">킥복싱</option>
														<option value="3">종합격투기</option>
														<option value="4">주짓수</option>
													</select>
												</div>
											</td>
										</tr>
										<!-- //공식기록 - 종목 -->

										<tr class="basic">
											<td><label for="prod_cate"></label></td>
											<td><label for="prod_cate">출전연도</label></td>
											<td>
												<div class="content_product_insert_select_box">
													<select id="prod_cate" name="recordDate">
														<option selected>출전연도</option>
														<option value="">2021</option>
														<option>2020</option>
														<option>2019</option>
													</select>
												</div>
											</td>
										</tr>
										<!-- //공식기록 - 출전연도 -->

										<tr class="basic">
											<td><label for="prod_cate"></label></td>
											<td><label for="prod_cate">매치</label></td>
											<td>
												<div class="content_product_insert_select_box">
													<select id="prod_cate" name="recordMatch">
														<option selected>매치</option>
														<option value="일반매치">일반매치</option>
														<option value="타이틀매치">타이틀매치</option>

													</select>
												</div>
											</td>
										</tr>
										<!-- //공식기록 - 매치 -->
										<!-- 반복단 end-->
									</table>
									<!-- //insert_matcingInfo -->

									<div class="official_button">
										<button class="official_button_plus" type="button">추가하기</button>
									</div>
									<!-- //공식기록 추가 -->
									<!-- //공식기록 추가 -->
									<label class="coment_title" for="word">상대에게 한마디</label><input class="coment_one" type="text" name="word">
										
	
									<div class="product_insert_btn">
										<button class="insert_btn">저장</button>
										<button class="product_delclose_btn">취소</button>
									</div>
									<!-- //product_insert_btn -->
									<input type="hidden" name="userNo" value="2">
								</form>
								<!-- //입력폼 → 주문하기 -->

							</div>
						</div>
						<!-- //content_bottom -->
					</div>
					<!--form 컨테이너-->
				</div>
				<!--//content_mypage-->

			</div>
			<!--//content_product//-->

		</div>
		<!-- //container -->

	</div>
	<!-- //wrap -->
	
</body>

</html>