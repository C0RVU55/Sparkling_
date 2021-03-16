<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품등록</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/delivery.css">
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
					<div class="content_delevery_product_header">
						<div>상품등록</div>
					</div>
					<!--//content_delevery_product_header//-->
					<div class="content_product_line"></div>
					<table class="product_insert_content">
						<colgroup>
							<col style="width: 200px">
							<col style="width: 600px">
						</colgroup>
						<tr class="basic">
							<td><label for="prod_cate">상품카테고리</label></td>
							<td>
								<div class="content_product_insert_select_box">
									<select id="prod_cate">
										<option selected>운동용품</option>
										<option>의류</option>
										<option>잡화</option>
									</select>
								</div>
							</td>
						</tr>
						<tr class="basic">
							<td><label for="event_cate">종목카테고리</label></td>
							<td><div class="content_product_insert_select_box">
									<select id="event_cate">
										<option selected>종목</option>
										<option>킥복싱</option>
										<option>복싱</option>
										<option>주지수</option>
									</select>
								</div></td>
						</tr>
						<tr class="basic">
							<td><label for="prod_name">상품명</label></td>
							<td><input type="text" id="prod_name"></td>
						</tr>
						<tr class="basic">
							<td><label for="prod_price">제품가격</label></td>
							<td><input type="text" id="prod_price"></td>
						</tr>
						<tr class="basic">
							<td><label for="prod_brand">브랜드명</label></td>
							<td><input type="text" id="prod_brand"></td>
						</tr>
						<tr class="product_insert_div_img">
							<td>대표이미지</td>
							<td><input type="image" id="prod_img"></td>
						</tr>
						<tr class="product_insert_div_img">
							<td>추가이미지</td>
							<td><input type="image" id="sub_img1"><img
								src="${pageContext.request.contextPath }/assets/image/글러브.jpg"></td>
						</tr>
						<tr class="sizecolor_div">
							<td>색상 및 사이즈</td>
							<div>
								<td id=sizecolor>
									<label for="color">색상</label> 
									<input type="text" id="color"> 
									<label for="size">사이즈</label>
									<input type="text" id="last"><label for="size">재고</label>
									<input type="last" id="size">
									<button>+</button>
									<div>
										<div>블랙 55 35</div>
										<div>블루 66 70</div>
									</div>
								</td>
							</div>
						</tr>
						<tr class="plus">
							<td><label for="prod_desc">제품소개(성분)</label></td>
							<td><textarea id="prod_desc"></textarea></td>
						</tr>
						<tr class="plus">
							<td><label for="prod_from">제조/수입내용</label></td>
							<td><textarea id="prod_from"></textarea></td>
						</tr>
						<tr class="plus">
							<td><label for="prod_wash">세탁방법 및 주의사항</label></td>
							<td><textarea id="prod_wash"></textarea></td>
						</tr>
						<tr class="plus">
							<td><label for="prod_qual">품질보증기준</label></td>
							<td><textarea id="prod_qual"></textarea></td>
						</tr>
						<tr class="large">
							<td><label for="prod_detail">상세페이지</label></td>
							<td>
								<div>
									<p>상세페이지 이미지등록</p>
									<label class="input-file-button" for="input-file">업로드</label> <input
										type="file" id="input-file" style="display: none;">
								</div> <textarea id="prod_detail"></textarea>
								</div>
							</td>
						</tr>
					</table>
					<div class="product_insert_btn">
						<button class="insert_btn" type="submit">상품등록</button>
						<button class="product_delclose_btn"><a href="${pageContext.request.contextPath}/mypage/prod">상품목록으로</a></button>
					</div>
				</div>
				<!--//delivery_info-->
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