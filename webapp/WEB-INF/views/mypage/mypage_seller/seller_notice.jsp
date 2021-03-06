<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/booking.css">
</head>
<body>

	<div class="wrap">
		<div class="container">
			<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
			<!--//header//-->

			<div class="middle">
				<c:import url="/WEB-INF/views/include/sidemenu.jsp"></c:import>
				<!--//side_menu//-->

				<!--////////////////////////////////////////////-->

				<div class="content_seller">
					<div class="content_booking_header">
						<div>판매자 등록</div>
					</div>
					<!--//content_delevery_product_header//-->
					<div class="content_product_line"></div>

					<div class="not_seller">
						<div class="not_seller_phrase1">판매자 등록이 되어 있지 않습니다.</div>
						<div class="not_seller_phrase2">사장님이신가요? 판매자 등록을 해 주세요!</div>
						
						<c:if test="${authUser.book_type == 0}">						
							<a href="${pageContext.request.contextPath}/mypage/book/bookselleraddform"><button  class="seller_btn" type="button">대관상품 등록하기</button></a>
						</c:if>
						
						<c:if test="${authUser.prod_type == 0}">
							<a href="${pageContext.request.contextPath}/mypage/prod/prodselleraddform"><button  class="seller_btn" type="button">배송상품판매자 등록하기</button></a>
						</c:if>
						<div id="space"></div>
					</div>
					<!--//not_seller-->
				</div>

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