<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원정보입력</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/mypage_buy.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<body>

	<div class="wrap">

		<div class="container">

			<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
			<!--//header-->

			<div class="middle" id="joinmiddle">

				<div class="content_mypage">

					<div class="content_info_update_header">
						<div>회원정보입력</div>
					</div>
					<!--//content_matchingInfo_header//-->

					<div class="joinmiddleline"></div>
					<!-- //line -->

					<div class="content_bottom">
						<form id="sellForm"
							action="${pageContext.request.contextPath}/user/joininfowrite"
							enctype="multipart/form-data" method="post">
							<div class="info_table">
								<table class="join" >
									<colgroup>
										<col style="width: 300px">
										<col style="width: 100px">
										<col style="width: 600px">
									</colgroup>
									<tr class="infotite">
										<td rowspan="4" id="info_imgbox"><img id="preview"
											src="${pageContext.request.contextPath}/assets/image/마이페이지 남성_글러브.png"></td>
										<td>아이디</td>
										<td><input type="text" id="user_name" name="user_id"
											value="" placeholder="아이디를 입력해주세요."></td>
									</tr>
									<tr class="infotite">
										
										<td>비밀번호</td>
										<td><input type="text" id="user_name" name="password"
											value="" placeholder="비밀번호를 입력해주세요."></td>
									</tr>
									<tr class="infotite">
								
										<td>이름</td>
										<td><input type="text" id="user_name" name="user_name"
											value="${uservo.user_name}" placeholder="이름을 입력해주세요."></td>
									</tr>
									<tr class="infotite">
										<td>닉네임</td>
										<td><input type="text" id="nickname" name="nickname"
											value="${uservo.nickname}" placeholder="닉네임을 입력해주세요."></td>
									</tr>
									<tr id="wideinfo">
										<td colspan="1">프로필 사진 넣기 <input type="file"
											name="profilphoto" id="user_photo">
										</td>

									<!-- </tr>by영훈 2개의 행을 하나의 행으로 하나로 3칸을 맞출수있어서 합침
									<tr class="infotite2">
										<td></td>
									 -->
										<td>성별</td>
										<td><c:choose>
												<c:when test="${uservo.gender == 'F'}">
													<input id="M" class="gender" type="radio" name="gender"
														value="M">
													<label for="M">남성</label>
													<input id="F" class="gender" type="radio" name="gender"
														value="F" checked="checked">
													<label for="F">여성</label>
												</c:when>
												<c:otherwise>
													<input id="M" class="gender" type="radio" name="gender"
														value="M" checked="checked">
													<label for="M">남성</label>
													<input id="F" class="gender" type="radio" name="gender"
														value="F">
													<label for="F">여성</label>
												</c:otherwise>
											</c:choose>
										<td>
									</tr>
									

									<tr id="hp">
										<td id="hp_title"><label for="hp">전화번호</label></td>
										<td colspan="2" id="hp_content">
											<div id="add_hp">
												<div id="hp_content1">
													<input type="text" id="user_ph" name="user_phone"
														value="${uservo.user_phone}" placeholder="전화번호"
														maxlength="13">
												</div>
											</div>
										</td>
									</tr>
									<tr id="address">
										<td id="address_title"><label for="searchaddress">주소</label></td>
										<td colspan="2" id="address_content">
											<div id="add_search">
												<div id="address_content1">
													<input type="hidden" id="confmKey" name="confmKey" value="">

													<input type="text" id=sample4_postcode name="post"
														placeholder="우편번호" readonly> <input type="text"
														id="sample4_roadAddress" name="roadaddress" value=""
														placeholder="도로명주소" readonly>

												</div>
												<button type="button" id="search_btn">검색하기</button>
											</div>
											<div id="address_content2">
												<input type="text" id="addressdetail" name="addressdetail"
													placeholder="나머지주소를 입력해주세요."> <input type="hidden"
													id="sample4_jibunAddress" placeholder="지번주소"> <input
													type="hidden" id="sample4_extraAddress" placeholder="참고항목">
												<span id="guide" style="color: #999; display: none"></span>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<input type="hidden" name="user_no" value="${uservo.user_no}">
							<!--match_table-->
							<div class="info_update_btn">
								<button class="insert_btn" type="submit">회원가입하기</button>
								<a href="${pageContext.request.contextPath}/user/joincancle?user_no=${uservo.user_no}"><button
										class="delclose_btn" type="button">취소</button></a>
							</div>
						</form>
					</div>
					<!--//content_bottom-->

				</div>
				<!--//content_mypage-->

			</div>
			<!--//middle-->


			<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
			<!--//footer//-->

		</div>
		<!--//container-->

	</div>
	<!--wrap-->

</body>


<script type="text/javascript">


$('#user_photo').change(function(){
    setImageFromFile(this, '#preview');
});

function setImageFromFile(input, expression) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $(expression).attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}



	$("#sample4_postcode").on("click", function() {
		sample4_execDaumPostcode();

	});
	$("#sample4_roadAddress").on("click", function() {
		sample4_execDaumPostcode();

	});

	$("#search_btn").on("click", function() {
		sample4_execDaumPostcode();
	});

	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}

	//주소 api

	///////////////////////////
	$(document)
			.on(
					"keyup",
					"#user_ph",
					function() {
						$(this)
								.val(
										$(this)
												.val()
												.replace(/[^0-9]/g, "")
												.replace(
														/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,
														"$1-$2-$3").replace(
														"--", "-"));
					});

	function removeComma(str) {
		n = str.replace(/-/gi, "");
		return n;
	}

	$(".insert_btn").on("click", function() {
		var user_name = $("[name='user_name']").val();
		if (user_name == null || user_name == "") {
			alert("이름을 입력해주세요.");
			return false;
		}
		var nickname = $("[name='nickname']").val();
		if (nickname == null || nickname == "") {
			alert("닉네임을 입력해주세요.");
			return false;
		}

		var roadaddress = $("[name='roadaddress']").val();
		if (roadaddress == null || roadaddress == "") {
			alert("주소를 검색해주세요.");
			return false;
		}

		var addressdetail = $("[name='addressdetail']").val();
		if (addressdetail == null || addressdetail == "") {
			alert("나머지주소를 입력해주세요.");
			return false;
		}

		var profilphoto = $("input[name=profilphoto]").val();
		//파일 선택 필수
		if (profilphoto == null || profilphoto == "") {
			alert("프로필이미지를 등록해주세요.");
			return false;
		}

		var ph = $("[name='user_phone']").val();
		var user_phone = removeComma(ph);
		if (user_phone == null || user_phone == "") {
			console.log(user_phone);
			alert("전화번호를 입력해주세요.");
			return false;
		}
		if (user_phone.length < 11) {
			alert("전화번호를 확인해주세요.");
			return false;
		}

		$("[name='user_phone']").val(user_phone);
	});
</script>

</html>