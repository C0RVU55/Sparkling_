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

<body>
    
  <div class="wrap">
    <div class="container">
    
      <c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	  <!--//header//-->
    
</div><!--//container-->
</div><!--//wrap-->
	
	
<!--///////////////상품리스트///////////////-->

<!--아이콘 링크-->
<script src="https://kit.fontawesome.com/5a9452f10d.js" crossorigin="anonymous"></script>
<!-- search -->
      
<div class="wrap">
	<div class="container">

      <!-- item -->
      <div class="searching_item">
        
        <!--드롭다운 종목카테고리-->
        <div class="event_cate" style="bottom:-9px">
          <select class="cate_select" onchange="this.form.sort.value=this.value;this.form.submit()">
            <option value="">종목</option>
            <option value="1">복싱</option>
            <option value="2">킥복싱</option>
            <option value="3">주짓수</option>
            <option value="4">종합격투기</option>
            <option value="5">기타종목</option>
          </select>
        </div>

        <div class="ico_cate">
          <span class="tit" id="on">전체보기</span>
          <span class="tit">운동용품</span>
          <span class="tit">의류</span>
        </div>
        
        <!-- 체육관 검색 -->
        <form id="form_gim" action="">
          <input class="input-text" type="text" placeholder="상품명 검색">
          <button class="gim_btn"><i class="fas fa-search"></i></button>
        </form>
      </div>
  </div>
  <!--div container-->
</div>
<!--div wrap-->
        

      


<div class="wrap2">
	<div class="container2">
    <div id="goodsList">
      <ul>
        <!--첫번째 줄-->
        <li>
          <div class="item">
              <a class="img" style="background-image: url();" href="./store_products.html">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/glove1.jpg" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'" width="308" height="396">
              </a> 

              <div>
                <a class="info" href="./store_products.html">
                  <span class="name">[에버라스트] 복싱 백글러브</span>
                  <span class="price">153,675원</span>
                  <span class="desc"><!----></span>
                </a>
             </div>
          </div> <!--.item-->        
        </li> 

        <!--미리보기 예시 리스트-->
        <li>
          <div class="item left_item">
              <a class="img" style="background-image: url();" href="./store_products.html">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/graybox.jpg" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'" width="308" height="396">
              </a> 

              <div>
                <a class="info" href="./store_products.html">
                  <span class="name">[붕대] 압박 붕대(10개입)</span>
                  <span class="price">11,500원</span>
                  <span class="desc"><!----></span>
                </a>
             </div>
          </div> <!--.item-->        
        </li>
        <li>
          <div class="item left_item">
              <a class="img" style="background-image: url();" href="./store_products.html">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/graybox.jpg" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'" width="308" height="396">
              </a> 

              <div>
                <a class="info" href="./store_products.html">
                  <span class="name">[샌드백] 가정용 스탠딩 샌드백</span>
                  <span class="price">54,900원</span>
                  <span class="desc"><!----></span>
                </a>
             </div>
          </div> <!--.item-->        
        </li>

        <!--두번째 줄-->
        <li>
          <div class="item">
              <a class="img" style="background-image: url();" href="./store_products.html">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/graybox.jpg" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'" width="308" height="396">
              </a> 

              <div>
                <a class="info" href="./store_products.html">
                  <span class="name">[글러브] 펀치킹 글러브</span>
                  <span class="price">153,675원</span>
                  <span class="desc"><!----></span>
                </a>
             </div>
          </div> <!--.item-->        
        </li> 
        <li>
          <div class="item left_item">
              <a class="img" style="background-image: url();" href="./store_products.html">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/graybox.jpg" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'" width="308" height="396">
              </a> 

              <div>
                <a class="info" href="./store_products.html">
                  <span class="name">[붕대] 압박 붕대(10개입)</span>
                  <span class="price">11,500원</span>
                  <span class="desc"><!----></span>
                </a>
             </div>
          </div> <!--.item-->        
        </li>
        <li>
          <div class="item left_item">
              <a class="img" style="background-image: url();" href="./store_products.html">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/graybox.jpg" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'" width="308" height="396">
              </a> 

              <div>
                <a class="info" href="./store_products.html">
                  <span class="name">[샌드백] 가정용 스탠딩 샌드백</span>
                  <span class="price">54,900원</span>
                  <span class="desc"><!----></span>
                </a>
             </div>
          </div> <!--.item-->        
        </li>
         
        <!--세번째 줄-->
        <li>
          <div class="item">
              <a class="img" style="background-image: url();" href="./store_products.html">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/graybox.jpg" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'" width="308" height="396">
              </a> 

              <div>
                <a class="info" href="./store_products.html">
                  <span class="name">[글러브] 펀치킹 글러브</span>
                  <span class="price">153,675원</span>
                  <span class="desc"><!----></span>
                </a>
             </div>
          </div> <!--.item-->        
        </li> 

        <!--미리보기 예시 리스트-->
        <li>
          <div class="item left_item">
              <a class="img" style="background-image: url();" href="./store_products.html">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/graybox.jpg" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'" width="308" height="396">
              </a> 

              <div>
                <a class="info" href="./store_products.html">
                  <span class="name">[붕대] 압박 붕대(10개입)</span>
                  <span class="price">11,500원</span>
                  <span class="desc"><!----></span>
                </a>
             </div>
          </div> <!--.item-->        
        </li>
        <li>
          <div class="item left_item">
              <a class="img" style="background-image: url();" href="./store_products.html">
                <img src="${pageContext.request.contextPath}/assets/image/store_img/graybox.jpg" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'" width="308" height="396">
              </a> 

              <div>
                <a class="info" href="./store_products.html">
                  <span class="name">[샌드백] 가정용 스탠딩 샌드백</span>
                  <span class="price">54,900원</span>
                  <span class="desc"><!----></span>
                </a>
             </div>
          </div> <!--.item-->        
        </li>
        
      </ul>
    </div>
  </div>
  <!--container-->
</div>
<!--wrap-->


<div class="wrap">
	<div class="container">

    <br><br>

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
      

    <br><br><br><br><br><br><br><br><br><br><br><br>


	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
	<!--//footer//-->

  </div>
  <!--container-->
</div>
<!--wrap--> 




</body>


</html>