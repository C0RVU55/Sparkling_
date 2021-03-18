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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>

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
					<form action="${pageContext.request.contextPath}/mypage/prod/write" name="uploadForm" id="uploadForm" method="get">
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
								<td><label for="exer_cate">종목카테고리</label></td>
								<td><div class="content_product_insert_select_box">
										<select id="exer_cate">
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
								<td><label for="brand_name">브랜드명</label></td>
								<td><input type="text" id="brand_name"></td>
							</tr>
							<tr class="product_insert_div_img">
								<td>대표이미지</td>
								<td class="img_td">
									<div>
										<div class="dropZone1">
											<p>이미지를 끌어오세요</p>
										</div>
										<div id="imgadd1"></div>
									</div>
								</td>
							</tr>
							<tr class="product_insert_div_img">
								<td>추가이미지</td>
								<td class="img_td">
									<div>
										<div class="dropZone2">
											<p>이미지를 끌어오세요</p>
										</div>
										<div id="imgadd2"></div>
									</div>
								</td>

							</tr>
							<tr class="sizecolor_div">
								<td>색상 및 사이즈</td>
								<div>
									<td id=sizecolor><label for="color">색상</label> <input
										type="text" id="color"> <label for="size">사이즈
									</label> <input type="text" id="last"> <label for="size">재고
									</label> <input type="last" id="size">
										<button>+</button>
										<div>
											<div>블랙 55 35</div>
											<div>블루 66 70</div>
										</div></td>
								</div>
							</tr>
							<tr class="plus">
								<td><label for="prod_info">제품소개(성분)</label></td>
								<td><textarea id="prod_info"></textarea></td>
							</tr>
							<tr class="plus">
								<td><label for="prod_making">제조/수입내용</label></td>
								<td><textarea id="prod_making"></textarea></td>
							</tr>
							<tr class="plus">
								<td><label for="prod_notice">세탁방법 및 주의사항</label></td>
								<td><textarea id="prod_notice"></textarea></td>
							</tr>
							<tr class="plus">
								<td><label for="prod_guarantee">품질보증기준</label></td>
								<td><textarea id="prod_guarantee"></textarea></td>
							</tr>
							<tr class="large">
								<td><label for="prod_detail">상세페이지</label></td>
								<td>
									<div>
										<p>상세페이지 이미지등록</p>
										<label class="input-file-button" for="input-file">업로드</label>
										<input type="file" id="input-file" style="display: none;">
									</div> <textarea id="prod_detail"></textarea>
								</td>
							</tr>
						</table>

						<div class="product_insert_btn">
							<button class="insert_btn" type="submit">상품등록</button>
							<button class="product_delclose_btn">상품목록으로</button>
						</div>
					</form>
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

<script type="text/javascript">
// 파일 리스트 번호
var fileIndex = 0;
// 등록할 전체 파일 사이즈
var totalFileSize = 0;
// 파일 리스트
var fileList = new Array();
// 파일 사이즈 리스트
var fileSizeList = new Array();
// 등록 가능한 파일 사이즈 MB
var uploadSize = 50;
// 등록 가능한 총 파일 사이즈 MB
var maxUploadSize = 500;
var uploadFiles = [];

$(function (){
    // 파일 드롭 다운
    fileDropDown();
});

// 파일 드롭 다운
function fileDropDown(){
    var dropZone1 = $(".dropZone1");
    //Drag기능 
    dropZone1.on('dragenter',function(e){
        e.stopPropagation();
        e.preventDefault();
        dropZone1.css('background-color','#A9A9A9');
    });
    dropZone1.on('dragleave',function(e){
        e.stopPropagation();
        e.preventDefault();
        // 드롭다운 영역 css
        dropZone1.css('background-color','#E3E3E3');
    });
    dropZone1.on('dragover',function(e){
        e.stopPropagation();
        e.preventDefault();
        // 드롭다운 영역 css
        dropZone1.css('background-color','#A9A9A9');
    });
    dropZone1.on('drop',function(e){
        e.preventDefault();
        // 드롭다운 영역 css
        dropZone1.css('background-color','#E3E3E3');
        var files = e.originalEvent.dataTransfer.files;//0
        for (var i = 0; i < files.length; i++) {
			var file = files[i];
			var d = new Date();
			var prod_img_name = files[i].name;
			var prod_img_savename = files[i].name+files[i].size+d.getTime();
			console.log('prod_img_name'+prod_img_name);
			console.log('prod_img_savename'+prod_img_savename);

			console.log(file);
			var count = uploadFiles.push(file); //업로드 목록에 추가
			preview(file, count - 1); //미리보기 만들기
			console.log('count'+count);
        }
        if(files != null){
            if(files.length < 1){
                alert("폴더 업로드 불가");
                return;
            }
            selectFile(files)
        }else{
            alert("ERROR");
        }
    });
}



function preview(file, idx) {
	var reader = new FileReader();
	reader.onload = (function(f, idx) {
		return function(e) {
			var div = '<div class="thumb"> \
				<img src="'
											+ e.target.result
											+ '" title="'
											+ escape(f.name)
											+ '"/> \
				<div class="close" data-idx="' + idx + '">이미지삭제</div> \
				</div>';
                       
			$("#imgadd1").append(div);
		};
	})(file, idx);
	reader.readAsDataURL(file);
}

/*
// 업로드 파일 삭제
function deleteFile(fIndex){
    // 전체 파일 사이즈 수정
    totalFileSize -= fileSizeList[fIndex];
    
}
*/

$("#imgadd1").on("click", ".close", function(e) {
	var $target = $(e.target);
	var idx = $target.attr('data-idx');
	uploadFiles[idx].upload = 'disable'; //삭제된 항목은 업로드하지 않기 위해 플래그 생성
	$target.parent().remove(); //프리뷰 삭제
});








/*(상품이미지번호, 상품품번, 등록명, 저장명, 옵션)*/
$("#insert_btn").on("click", function() {
	var formData = new FormData();
	$.each(uploadFiles, function(i, file) {
		if (file.upload != 'disable') //삭제하지 않은 이미지만 업로드 항목으로 추가
			formData.append('upload-file', file, file.name);
	});
	$.ajax({
		url : '/api/etc/file/upload',
		data : formData,
		type : 'post',
		contentType : false,
		processData : false,
		success : function(ret) {
			alert("완료");
		}
	});
});


// 파일 선택시
function selectFile(files){
    // 다중파일 등록
    if(files != null){
        for(var i = 0; i < files.length; i++){
            // 파일 이름
            var fileName = files[i].name;
            var fileNameArr = fileName.split("\.");
            // 확장자
            var ext = fileNameArr[fileNameArr.length - 1];
            // 파일 사이즈(단위 :MB)
            var fileSize = files[i].size / 1024 / 1024;
            
            if($.inArray(ext, ['exe', 'bat', 'sh', 'java', 'jsp', 'html', 'js', 'css', 'xml', 'pdf']) >= 0){
                // 확장자 체크
                alert("등록 불가 확장자");
                break;
            }else if(fileSize > uploadSize){
                // 파일 사이즈 체크
                alert("용량 초과\n업로드 가능 용량 : " + uploadSize + " MB");
                break;
            }
        }
    }else{
        alert("ERROR");
    }
}


</script>
</html>