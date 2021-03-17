<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>알림</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/mypage_buy.css">
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

					<div class="sub_header">알림</div>
					<!--//alarm_header//-->

					<div class="line"></div>
					<!-- //line -->

					<!-- 반복리스트 -->
					<div class="alram_list">

						<c:forEach items="${requestScope.AlarmList }" var="aList">
							<div class="alarm_content">
								<h3 class="Order_date">${aList.alarm_date }</h3>
								<div class="Box_alarm">
									<span><a class="Addr_goods" href="">${aList.user_id }</a></span>
									<span class="Kind_goods">${aList.sell_type }</span>
									<span class="Kind_goods_state">${aList.prod_state }</span>
									<p class="Notice_alarm">${aList.alarm_content }</p>
								</div>
							</div>
						</c:forEach>
						<!--//alarm_content-->

					</div>
					<!--//alram_list-->

				</div>
				<!-- //content -->
				<!-- //반복리스트 -->

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