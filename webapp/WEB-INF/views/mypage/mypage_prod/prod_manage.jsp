<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품관리</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/delivery.css">
</head>
</head>
<body>
	<div class="wrap">
		<div class="container">
			<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
			<!--//header//-->
			<div class="middle">
				<c:import url="/WEB-INF/views/include/sidemenu.jsp"></c:import>
				<!--//sidemenu//-->

				<div class="content_product">
					<div class="content_product_header">
						<div>상품관리</div>
						<button class="product_registration_btn">
							<a href="${pageContext.request.contextPath}/mypage/prod/form">상품등록</a>
						</button>
						<div class="content_product_select_box">
							<select>
								<option selected>최근등록순</option>
								<option>판매개수</option>
								<option>가격</option>
								<option>카테고리-의류</option>
								<option>카테고리-잡화</option>
								<option>카테고리-운동용품</option>
							</select>
						</div>
					</div>
					<!--//content_product_header//-->

					<div class="content_product_line"></div>
					<div class="content_product_list">
						<div class="list">
							<div class="product_name">[에버레스트] 글러브</div>
							<div class="list_line"></div>
							<div class="product_content">
								<div>
									<img src="${pageContext.request.contextPath}/assets/image/글러브.jpg">
								</div>
								<div class="table_box">
									<table class="delevery_insert_table">
										<colgroup>
											<col style="width: 130px">
											<col style="width: 500px">
										</colgroup>
										<tr>
											<td>카테고리</td>
											<td>의류</td>
										</tr>
										<tr>
											<td>상품품번</td>
											<td>gl12456874</td>
										</tr>
										<tr>
											<td>색상|사이즈|재고</td>
											<td>
												<div>
													<div>블랙 | 5</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>가격</td>
											<td>38,000원</td>
										</tr>
										<tr>
											<td>등록일자</td>
											<td>2020/03/01</td>
										</tr>
									</table>
									<div class="product_content_btn">
										<button class="product_modify_btn">
											<a href="./배송판매자_마이페이지_상품수정.html">수정하기</a>
										</button>
										<button class="product_delete_btn">삭제하기</button>
									</div>
								</div>
								<!--//table_box-->
							</div>
						</div>
						<!--//list//-->

						<!--list 배치확인용 중복중복중복중복-->
						<div class="list">
							<div class="product_name">[아디다스] 복싱복</div>
							<div class="list_line"></div>
							<div class="product_content">
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/복싱복.jpg">
								</div>
								<div class="table_box">
									<table class="delevery_insert_table">
										<colgroup>
											<col style="width: 130px">
											<col style="width: 500px">
										</colgroup>
										<tr>
											<td>카테고리</td>
											<td>의류</td>
										</tr>
										<tr>
											<td>상품품번</td>
											<td>cl12456874</td>
										</tr>
										<tr>
											<td>색상|사이즈|재고</td>
											<td>
												<div>
													<div>블루 | 95(M) | 5</div>
													<div>블루 | 100(L) | 13</div>
													<div>블루 | 105(LX) | 78</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>가격</td>
											<td>60,000원</td>
										</tr>
										<tr>
											<td>등록일자</td>
											<td>2020/03/01</td>
										</tr>
									</table>
									<div class="product_content_btn">
										<button class="product_modify_btn">수정하기</button>
										<button class="product_delete_btn">삭제하기</button>
									</div>
								</div>
								<!--//table_box-->
							</div>
						</div>
						<!--//list//여기까지 중복중복중복중복-->
					</div>
				</div>
				<!--//content_product//-->
			</div>
			<!--//middle//-->
			<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
			<!--//footer//-->
		</div>
		<!--//container//-->
	</div>
	<!--//wrap//-->
</body>
</html>