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

<body class="proBody">
    
<div class="wrap">
    <div class="container">
        
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	    <!--//header//-->

    </div><!--//container-->
</div><!--//wrap-->



<div class="wrap">
  <div class="container">

		<!--상단여백-->
		<div class="searching_item"><!----></div>

		<div class="section_view">
			
			<div id="sectionView">
				

					<img src="${pageContext.request.contextPath}/assets/image/store_img/glove1.jpg" alt="상품 대표 이미지" class="bg" width="430" height="552"> <!--상품 대표 이미지-->

					<!--상품 정보,선택,가격,장바구니,구매 영역-->
					<div class="goods_area"> 

						<!--[브랜드명] 상품명-->
						<div class="goods_name">
							<strong class="name">[에버라스트] 복싱 백글러브</strong>
						</div> 
					
						<!--상품 가격-->
						<div class="goods_price">
							<span class="position">
									<span class="price">153,600<span class="won">원</span></span>
									<div>
										<span class="not_login">로그인 후, 적립혜택이 제공됩니다.</span>
									</div>
							</span>
						</div>
						
						<!--색상 (있을때)-->
						<div class="goods_info">
							<dl class="list fst">
								<dt class="tit">색상</dt> <dd class="desc">기본</dd>
							</dl> 

						<!--사이즈(없을때)--> 
							<dl class="list">
								<dt class="tit">사이즈</dt> <!----> <dd class="desc">Free</dd>
							</dl>
							
							
							<!--사이즈 (있을때)-->
							<!--
							<dl class="list fst">
								<dt class="tit">사이즈</dt> 
								<dd class="desc">
									<select id="prod_cate">
										<option selected>선택하기</option>
										<option>S</option>
										<option>M</option>
										<option>L</option>
										<option>XL</option>
									</select>
								</dd>
							</dl>
							-->

						<!--개수--> 
							<dl class="list">
								<dt class="tit">개수</dt> <dd class="desc">1개</dd>
							</dl> <!----> <!----> <!----> <!----> <!---->  <!----> <!----> <!---->
						</div>



						<!--상품선택-->
						<div id="cartPut">
							<!--상품 선택-->
							<div class="goods_info">
								<dl class="list fst">
									<dt class="tit">선택 상품</dt> 
									<!--
									<dd class="desc">
									
										<select id="prod_cate">
											<option selected>선택하기</option>
											<option>펀치킹 레드</option>
											<option>펀치킹 화이트</option>
											<option>펀치킹 블랙</option>
										</select>
									</dd>
									-->
								</dl>
							</div>
							
							<!--선택된 상품-->
							<div class="list_goods">
								<ul class="list">
									<li class="on">
										<span class="btn_position on">
											<button type="button" class="btn_del">
												<span class="txt">x</span>
											</button>
										</span> 
										<span class="name">[에버라스트] 복싱 백글러브</span>
										<div class="option">
											<span class="count">
												<button type="button" class="btn down on">-</button> 
												<input type="number" readonly="readonly" onfocus="this.blur()" class="inp"> 
												<button type="button" class="btn up on">+</button>
											</span> <span class="price">
												<span class="dc_price">153,600원</span>
											</span>
										</div>
									</li>
								</ul>
							</div>
						</div> <!--cartPut-->


						<div class="price_total">
							<!--총 금액-->
							<div class="total">
								<div class="price"><!----> 
									<strong class="tit">총 상품금액 :</strong> 
									<span class="sum">
									<span class="num">153,600</span> <span class="won">원</span></span>
								</div> 
								<p class="txt_point">
									<span class="ico">적립</span> 
									<span class="no_login"><!----> 
										<span>로그인 후, 적립혜택 제공</span>
									</span> <!---->
								</p>
							</div>

							<!--장바구니, 바로구매 버튼-->
							<div class="group_btn">
								<div class="view_function">
									<button type="button" class="btn btn_buy"><a href="../영훈/결제하기.html" style="font-size: 16px; color: #ffffff;">바로 구매</a></button> 
									<button type="button" class="btn btn_cart"><a href="../경환/cart.html" style="font-size: 16px; color: #C51212;">장바구니</a></button>
								</div> 
							</div>
						</div>

					</div> <!--goods_area-->
			</div> <!--id sectionView-->
		</div> <!--//section_view-->

		<div>

		</div>


		<!--상품 정보 영역-->
		<div class="layout_wrap goods_view_area">

			<!--상세정보,상품정보,고객후기,상담문의 탭-->
			<div class="goods_tab" id="proDesc">
				<ul class="goods_view_tab">
					<li>
						<a href="#proDesc">상품설명</a>
					</li>
					<li>
						<a href="#proInfo">상품정보</a>
					</li>
					<li>
						<a href="#proReview">고객후기</a>
					</li>
					<li>
						<a href="#proQna">상담문의</a>
					</li>
				</ul>
			</div> <!--goods_tab-->

			<!--상세정보(이미지)-->
			<div class="goods_view">
				<img src="${pageContext.request.contextPath}/assets/image/store_img/glove1-1.png" alt="상품 추가 이미지" class="bg"> <!--상품 추가 이미지-->
			</div>





			<!--상세정보,상품정보,고객후기,상담문의 탭-->
			<div class="goods_tab" id="proInfo">
				<ul class="goods_view_tab">
					<li>
						<a href="#proDesc">상품설명</a>
					</li>
					<li>
						<a href="#proInfo">상품정보</a>
					</li>
					<li>
						<a href="#proReview">고객후기</a>
					</li>
					<li>
						<a href="#proQna">상담문의</a>
					</li>
				</ul>
			</div> <!--goods_tab-->

			
			<!--상품정보-->
			<div class="goods_view_infomation" id="goods_infomation">
				<table width="100%" border="0" cellpadding="0" cellspacing="1" class="extra-information">
					<tbody>
						<tr>
							<th scope="row" class="goods-view-form-table-heading">제품명</th><td>상품 설명 및 상품 이미지 참조</td>
							<th scope="row" class="goods-view-form-table-heading">식품의 유형</th><td>상품 설명 및 상품 이미지 참조</td>
						</tr>
						<tr>
							<th scope="row" class="goods-view-form-table-heading">제조원 및 생산자</th><td>상품 설명 및 상품 이미지 참조</td>
							<th scope="row" class="goods-view-form-table-heading">소재지</th><td>상품 설명 및 상품 이미지 참조</td>
						</tr>
						<tr>
							<th scope="row" class="goods-view-form-table-heading">제조일/유통기한</th><td>상세정보 및 제품 별도라벨 표기</td>
							<th scope="row" class="goods-view-form-table-heading">중량 및 구성</th><td>상품 설명 및 상품 이미지 참조</td>
						</tr>
						<tr>
							<th scope="row" class="goods-view-form-table-heading">원재료 및 함량</th><td>상품 설명 및 상품 이미지 참조</td>
							<th scope="row" class="goods-view-form-table-heading">보관방법</th><td>상품 설명 및 상품 이미지 참조</td>
						</tr>
						<tr>
							<th scope="row" class="goods-view-form-table-heading">영양성분</th><td>상품 설명 및 상품 이미지 참조</td>
							<th scope="row" class="goods-view-form-table-heading">소비자상담실 전화번호</th><td>마켓컬리 고객행복센터 (1644-1107)</td>
						</tr>
					</tbody>
				</table>
			</div> <!--.goods_view_infomation #goods_infomation-->
				
				
				
			<!--상세정보,상품정보,고객후기,상담문의 탭-->
			<div class="goods_tab" id="proReview">
				<ul class="goods_view_tab">
					<li>
						<a href="#proDesc">상품설명</a>
					</li>
					<li>
						<a href="#proInfo">상품정보</a>
					</li>
					<li>
						<a href="#proReview">고객후기</a>
					</li>
					<li>
						<a href="#proQna">상담문의</a>
					</li>
				</ul>
			</div> <!--goods_tab-->

			<!--고객후기-->	
			<div class="goods_view_board" id="goods_board">
				<div id="contents-wrapper" class="goods_board">
					<div class="xans-element- xans-product xans-product-additional detail_board  ">
						<div class="board">
							<span class="line"></span>
							<form name="frmList">
								<input type="hidden" name="sort" value="">
								<input type="hidden" name="page_num" value="">
								<input type="hidden" name="goodsno" value="4416">

								<div class="title_txt">
									<h2>PRODUCT REVIEW</h2>

									<div class="sort-wrap">
										<ul class="list_type1 old">
											<li>
												<span class="ico"></span>
												<p class="txt">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.	
												</p>
											</li>
											<li>
												<span class="ico"></span>
												<p class="txt">배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.
												</p>
											</li>
										</ul>

										<div class="left_sort">
											<span> 여백 <!--여백--> </span>
										</div>

										<div class="sort" style="bottom:-9px">
											<select class="sort_select" onchange="this.form.sort.value=this.value;this.form.submit()">
												<option value="1">최근등록순</option>
												<option value="2">조회많은순</option>
											</select>
										</div>
									</div> <!--sort-wrap-->
								</div> <!--title_txt-->

								<table class="xans-board-listheader" width="100%" border="0" cellpadding="0" cellspacing="0">
									<caption style="display:none">구매후기 제목</caption>
										<colgroup>
											<col style="width:70px;">
											<col style="width:auto;">
											<col style="width:51px;">
											<col style="width:117px;">
											<col style="width:100px;">
											<col style="width:80px;">
										</colgroup>

										<tbody>
											<tr>
												<th scope="col" class="input_txt">번호</th>
												<th scope="col" class="input_txt">제목</th>
												<th scope="col" class="input_txt">
													<a class="board_hidden"><!--히든--> </a>
												</th>
												<th scope="col" class="input_txt" align="left">작성자</th>
												<th scope="col" class="input_txt">작성일</th>
												<th scope="col" class="input_txt">조회</th>
											</tr>
										</tbody>
								</table>


								
								<!--리뷰글 리스트-->
								<div class="tr_line">
									<table class="xans-board-listheaderd tbl_newtype1" width="100%" cellpadding="0" cellspacing="0" onclick="view_content(this,event,'notice')">

									<caption style="display:none">구매후기 내용</caption>
										<colgroup>
											<col style="width:70px;">
											<col style="width:auto;">
											<col style="width:51px;">
											<col style="width:117px;">
											<col style="width:100px;">
											<col style="width:80px;">
										</colgroup>

									<tbody>
										<tr>
											
											
											<td align="center">
												17
											</td>
											<td class="subject">
												<div>손에 착 감깁니다.</div>
											</td>
											<td class="user_grade grade_comm">
												<a class="board_hidden"><!--히든--> </a>
											</td>
											<td class="user_grade">
												불주먹은나야
											</td>
											<td class="time">
												2021-03-11
											</td>
											<td>
												<span class="review-hit-cnt" data-sno="6412655">282397</span>
											</td>
										</tr>

										<!-------반복영역------->
										<tr>
											<input type="hidden" name="index" value="-1">
											<input type="hidden" name="image" value="">
											<input type="hidden" name="grade" value="0">
											<input type="hidden" name="best" value="false">
											<input type="hidden" name="pNo" value="">
											
											<td align="center">
												17
											</td>
											<td class="subject">
												<div>손에 착 감깁니다.</div>
											</td>
											<td class="user_grade grade_comm">
												<a class="board_hidden"><!--히든--> </a>
											</td>
											<td class="user_grade">
												불주먹은나야
											</td>
											<td class="time">
												2021-03-11
											</td>
											<td>
												<span class="review-hit-cnt" data-sno="6412655">282397</span>
											</td>
										</tr>
										<tr>
											<input type="hidden" name="index" value="-1">
											<input type="hidden" name="image" value="">
											<input type="hidden" name="grade" value="0">
											<input type="hidden" name="best" value="false">
											<input type="hidden" name="pNo" value="">
											
											<td align="center">
												17
											</td>
											<td class="subject">
												<div>손에 착 감깁니다.</div>
											</td>
											<td class="user_grade grade_comm">
												<a class="board_hidden"><!--히든--> </a>
											</td>
											<td class="user_grade">
												불주먹은나야
											</td>
											<td class="time">
												2021-03-11
											</td>
											<td>
												<span class="review-hit-cnt" data-sno="6412655">282397</span>
											</td>
										</tr>
										<tr>
											<input type="hidden" name="index" value="-1">
											<input type="hidden" name="image" value="">
											<input type="hidden" name="grade" value="0">
											<input type="hidden" name="best" value="false">
											<input type="hidden" name="pNo" value="">
											
											<td align="center">
												17
											</td>
											<td class="subject">
												<div>손에 착 감깁니다.</div>
											</td>
											<td class="user_grade grade_comm">
												<a class="board_hidden"><!--히든--> </a>
											</td>
											<td class="user_grade">
												불주먹은나야
											</td>
											<td class="time">
												2021-03-11
											</td>
											<td>
												<span class="review-hit-cnt" data-sno="6412655">282397</span>
											</td>
										</tr>
										<tr>
											<input type="hidden" name="index" value="-1">
											<input type="hidden" name="image" value="">
											<input type="hidden" name="grade" value="0">
											<input type="hidden" name="best" value="false">
											<input type="hidden" name="pNo" value="">
											
											<td align="center">
												17
											</td>
											<td class="subject">
												<div>손에 착 감깁니다.</div>
											</td>
											<td class="user_grade grade_comm">
												<a class="board_hidden"><!--히든--> </a>
											</td>
											<td class="user_grade">
												불주먹은나야
											</td>
											<td class="time">
												2021-03-11
											</td>
											<td>
												<span class="review-hit-cnt" data-sno="6412655">282397</span>
											</td>
										</tr>
									</tbody>
								</table>

								
							</form> <!--frmList-->

							
							<p class="btnArea after">
								<a href="#none" onclick="popup_register( 'add_review', '4416' )"><span class="bhs_button" style="line-height:30px; width:130px;">후기쓰기</span></a>
							</p>
						

						</div> <!--board-->

						<!-- 페이징 버튼 영역 -->
						<div id="paging">
							<ul>
							<li><a href="">◀</a></li>
							<li><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">4</a></li>
							<li class="active"><a href="">5</a></li>
							<li><a href="">6</a></li>
							<li><a href="">7</a></li>
							<li><a href="">8</a></li>
							<li><a href="">9</a></li>
							<li><a href="">10</a></li>
							<li><a href="">▶</a></li>
							</ul>
							
							
							<div class="clear"></div>
						</div>
					</div> <!--xans-element- xans-product xans-product-additional detail_board-->
				</div> <!--.goods_view_board #goods_board-->




				<!--상세정보,상품정보,고객후기,상담문의 탭-->
				<div class="goods_tab" id="proQna">
					<ul class="goods_view_tab">
					<li>
						<a href="#proDesc">상품설명</a>
					</li>
					<li>
						<a href="#proInfo">상품정보</a>
					</li>
					<li>
						<a href="#proReview">고객후기</a>
					</li>
					<li>
						<a href="#proQna">상담문의</a>
					</li>
				</ul>
				</div> <!--goods_tab-->

				<!--상담문의-->	
				<div class="goods_view_board" id="goods_board">
					<div id="contents-wrapper" class="goods_board">
						<div class="xans-element- xans-product xans-product-additional detail_board  ">
							<div class="board">
								<span class="line"></span>
									<div class="title_txt">
										<h2>PRODUCT Q&amp;A</h2>

										<ul class="list_type1 old">
											<li>
												<span class="ico"></span>
												<p class="txt">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.
												</p>
											</li>
											<li>
												<span class="ico"></span>
												<p class="txt">배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.
												</p>
											</li>
										</ul>
									</div>

									<table class="xans-board-listheader" width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<th width="70" scope="col" class="input_txt">번호</th>
												<th width="134" scope="col" class="input_txt board_hidden">
												</th>
												<th width="631" scope="col" class="input_txt">제목</th>
												<th width="80" scope="col" class="input_txt">작성자</th>
												<th width="80" scope="col" class="input_txt">작성일</th>
											</tr>
										</tbody>
									</table>

									
									<!--상담글 리스트-->
									<div>
										<table width="100%" class="xans-board-listheaderd">
											<tbody>
												<tr onmouseover="this.style.background='#F7F7F7'" onmouseout="this.style.background=''" onclick="view_content('15968', '1');" style="">
													<td width="70" align="center">
														123
													</td>
													<td width="134">
														<a class="board_hidden"><!--히든--> </a>	
													</td>
													<td class="image" style="padding:22px 19px 23px; text-align:left;">
														<div style="padding:3px 0px 0px 20px;">
															<p class="subject">판매 (일시)중단 제품 안내 (21.3.5 업데이트)</p>
														</div>
													</td>
													<td width="80">
														Marketkurly
													</td>
													<td width="80" style="color:#939393">
														2017-02-01
													</td>
												</tr>

												<!-------반복영역------->
												<tr onmouseover="this.style.background='#F7F7F7'" onmouseout="this.style.background=''" onclick="view_content('15968', '1');" style="">
													<td width="70" align="center">
														122
													</td>
													<td width="134">
														<a class="board_hidden"><!--히든--> </a>	
													</td>
													<td class="image" style="padding:22px 19px 23px; text-align:left;">
														<div style="padding:3px 0px 0px 20px;">
															<p class="subject">판매 (일시)중단 제품 안내 (21.3.5 업데이트)</p>
														</div>
													</td>
													<td width="80">
														Marketkurly
													</td>
													<td width="80" style="color:#939393">
														2017-02-01
													</td>
												</tr>
												<tr onmouseover="this.style.background='#F7F7F7'" onmouseout="this.style.background=''" onclick="view_content('15968', '1');" style="">
													<td width="70" align="center">
														121
													</td>
													<td width="134">
														<a class="board_hidden"><!--히든--> </a>	
													</td>
													<td class="image" style="padding:22px 19px 23px; text-align:left;">
														<div style="padding:3px 0px 0px 20px;">
															<p class="subject">판매 (일시)중단 제품 안내 (21.3.5 업데이트)</p>
														</div>
													</td>
													<td width="80">
														Marketkurly
													</td>
													<td width="80" style="color:#939393">
														2017-02-01
													</td>
												</tr>
												<tr onmouseover="this.style.background='#F7F7F7'" onmouseout="this.style.background=''" onclick="view_content('15968', '1');" style="">
													<td width="70" align="center">
														120
													</td>
													<td width="134">
														<a class="board_hidden"><!--히든--> </a>	
													</td>
													<td class="image" style="padding:22px 19px 23px; text-align:left;">
														<div style="padding:3px 0px 0px 20px;">
															<p class="subject">판매 (일시)중단 제품 안내 (21.3.5 업데이트)</p>
														</div>
													</td>
													<td width="80">
														Marketkurly
													</td>
													<td width="80" style="color:#939393">
														2017-02-01
													</td>
												</tr>
												<tr onmouseover="this.style.background='#F7F7F7'" onmouseout="this.style.background=''" onclick="view_content('15968', '1');" style="">
													<td width="70" align="center">
														199
													</td>
													<td width="134">
														<a class="board_hidden"><!--히든--> </a>	
													</td>
													<td class="image" style="padding:22px 19px 23px; text-align:left;">
														<div style="padding:3px 0px 0px 20px;">
															<p class="subject">판매 (일시)중단 제품 안내 (21.3.5 업데이트)</p>
														</div>
													</td>
													<td width="80">
														Marketkurly
													</td>
													<td width="80" style="color:#939393">
														2017-02-01
													</td>
												</tr>

											</tbody>
										</table>
									</div>									

						

								<p class="btnArea after">
									<a href="">
										<span class="bhs_button" style="line-height:30px; width:130px;">상품문의</span>
									</a>
								</p>


								<!-- 페이징 버튼 영역 -->
								<div id="paging">
									<ul>
										<li><a href="">◀</a></li>
										<li><a href="">1</a></li>
										<li><a href="">2</a></li>
										<li><a href="">3</a></li>
										<li><a href="">4</a></li>
										<li class="active"><a href="">5</a></li>
										<li><a href="">6</a></li>
										<li><a href="">7</a></li>
										<li><a href="">8</a></li>
										<li><a href="">9</a></li>
										<li><a href="">10</a></li>
										<li><a href="">▶</a></li>
									</ul>									
									<div class="clear"></div>
								</div>


							</div> <!--board-->
						</div> <!--xans-element- xans-product xans-product-additional detail_board-->

					</div> <!--id="contents-wrapper" class="goods_board"-->

				</div> <!--.goods_view_board #goods_board-->
			</div> <!--class="goods_view_board" id="goods_board"-->













			
		</div> <!--layout_wrap goods_view_area-->
		
		
		




		<br><br><br><br><br><br><br><br><br>
		
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!--//footer//-->


	</div><!--//container-->
</div><!--//wrap-->







</body>
</html>