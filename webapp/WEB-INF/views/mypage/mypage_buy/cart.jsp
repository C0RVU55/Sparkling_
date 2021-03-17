<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>알림</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/mypage_buy.css">
</head>

<body>

	<div class="wrap">

		<div class="container">

			<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
			<!--//header-->

			<div class="middle">

				<c:import url="/WEB-INF/views/include/sidemenu.jsp"></c:import>
				<!--//side_menu//-->

				<div class="content">

					<div class="alarm_header">장바구니</div>
					<!--//alarm_header//-->

					<div class="line"></div>
					<!-- //line -->

					<!-- 입력폼 → 주문하기 -->
					<form>

						<div id="cartItemList" class="only_pc">

							<div>
								<div class="cart_item">

									<div class="cart_select">

										<div class="inner_select">
											<label class="check"> <input type="checkbox" name="checkAll" checked> <span class="ico"></span> 전체선택
											</label> <a href="" class="btn_delete"> 선택삭제 </a>
										</div>

									</div>
									<!-- //cart_select -->

									<!-- 반복리스트 -->
									<div class="box room">

										<ul class="list">

											<li>
												<div class="item">

													<label class="check" for=""> <input type="checkbox" id="" name="chkItem" data-item-id="" data-item-no="" data-item-parent-no="" checked> <span class="ico"></span>
													</label>
													<!-- //check -->

													<div class="name">
														<div class="inner_name">
															<a href="" class="package">권투글러브</a>
															<div class="info"></div>
														</div>
													</div>
													<!-- //name -->

													<div class="goods">

														<a href="" class="thumb" style="background-image: url(${pageContext.request.contextPath}/assets/image/글러브.jpg);"> 상품이미지 </a>
														<!-- //thumb -->

														<div class="price">
															<div class="in_price">
																<span class="selling">25,000 <span class="won">원</span>
																</span> <span class="cost"> 25,000 <span class="won">원</span>
																</span>

																<p class="noti">주의사항 이건 뭐지? 마켓컬리에서 쓰는거(용도는 모르겠음..)</p>
																<!-- //noti -->

															</div>
														</div>
														<!-- //price -->

													</div>
													<!-- //goods -->

													<button type="button" class="btn_delete" data-item-id="" data-item-no="" data-type="">상품삭제</button>
													<!-- //btn_delete -->

												</div> <!-- //item -->

											</li>

										</ul>

									</div>
									<!-- //box room -->
									<!-- //반복리스트 -->

									<div class="box room">
										<ul class="list">
											<li>
												<div class="item">
													<label class="check" for=""> <input type="checkbox" id="" name="chkItem" data-item-id="" data-item-no="" data-item-parent-no="" checked> <span class="ico"></span>
													</label>
													<div class="name">
														<div class="inner_name">
															<a href="" class="package">유니폼</a>
															<div class="info"></div>
														</div>
													</div>
													<div class="goods">
														<a href="" class="thumb" style="background-image: url(${pageContext.request.contextPath}/assets/image/복싱복.jpg);">상품이미지</a>
														<div class="price">
															<div class="in_price">
																<span class="selling">25,000 <span class="won">원</span>
																</span> <span class="cost"> 25,000 <span class="won">원</span>
																</span>
																<p class="noti"></p>
															</div>
														</div>
													</div>
													<button type="button" class="btn_delete" data-item-id="" data-item-no="" data-type="">상품삭제</button>
												</div>
											</li>
										</ul>
									</div>

								</div>
								<!-- //cart_item -->

								<div class="cart_result">
									<div class="inner_result">
										<div class="cart_delivery">
											<h3 class="tit">배송지</h3>
											<div class="address">
												<p class="addr">서울시 강남구</p>
												<a href="" class="btn_default">배송지 변경</a>
											</div>
										</div>

										<div class="amount_view">
											<dl class="amount">
												<dt class="tit">상품금액</dt>
												<dd class="price">
													<span class="num">25,000</span> <span class="won">원</span>
												</dd>
											</dl>

											<dl class="amount">
												<dt class="tit">할인금액</dt>
												<dd class="price">
													<span class="num minus">0</span> <span class="won">원</span>
												</dd>
											</dl>

											<dl class="amount">
												<dt class="tit">배송비</dt>
												<dd class="price">
													<span class="num">3,000</span> <span class="won">원</span>
												</dd>
											</dl>

											<dl class="amount lst">
												<dt class="tit">결제금액</dt>
												<dd class="price">
													<span class="num">28,000</span> <span class="won">원</span>
												</dd>
											</dl>

											<div class="btn_submit">
												<button type="submit" class="btn active">주문하기</button>
											</div>

										</div>

									</div>

								</div>

							</div>

						</div>
						<!-- //cartItemList -->

					</form>
					<!-- //입력폼 → 주문하기 -->

				</div>
				<!--//content-->

			</div>
			<!--//middle-->

			<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
			<!--//footer//-->

		</div>
		<!--//container-->

	</div>
	<!--//wrap-->

</body>

</html>