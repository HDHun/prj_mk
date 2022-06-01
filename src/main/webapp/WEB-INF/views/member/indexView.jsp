<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


 

<!DOCTYPE HTML>
<html>
  
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, intitial-scale=1.0">

<link href="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">



<title>Main</title>
<style type="text/css">
</style>
</head>

<body class="container-fluid">
	<%@ include file="/WEB-INF/views/include/topBar.jsp" %>
	
<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="margin-top: 10px;">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/infra/resources/images/1.PNG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item"  >
      <img src="/infra/resources/images/2.PNG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/infra/resources/images/4.PNG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/infra/resources/images/5.PNG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/infra/resources/images/6.PNG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/infra/resources/images/7.PNG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/infra/resources/images/8.PNG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/infra/resources/images/9.PNG" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div style="width: 100%; text-align: center;">

	<h3 style=" text-align: center; margin-top:100px; margin-bottom:50px;">이 상품 어때요?</h3>
	<div  style="width: 16rem; display: inline-block;" onclick="location.href='';">
	  <img src="/infra/resources/images/1.1.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left;">[칼라마타]엑스트라버진 실버틴 올리브 오일<br>
	    16,900원</p>
	  </div>
	</div>
	<div style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/1.2.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left ;">[썬키스트]고당도 오렌지 750g(대과/3입)<br>
	    8,200원</p>
	  </div>
	</div>
	<div  style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/1.3.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left;">[존쿡 델리미트]슈바인 학센 650g(냉동)<br>
	    18,000원</p>
	  </div>
	</div>
	<div style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/1.4.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left;">[기순도]기순도 고추장 4구 세트<br>
	    39,990원</p>
	  </div>
	</div>
<image src="/infra/resources/images/1_2.PNG" style="margin:20px;"></image>

<div style="width: 100%; text-align: center;">
	<h3 style=" text-align: center; margin-top:100px; margin-bottom:50px;">놓치면 후회할 가격</h3>
	<div  style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/2.1.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left;">동대문식 직화 야채 곱창&당면<br>
	    7,900원</p>
	  </div>
	</div>
	<div style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/2.2.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left ;">유레카 블루베리 100g 2종<br>
	    11,900원</p>
	  </div>
	</div>
	<div  style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/2.3.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left;">[하코야]돈마호크카츠<br>
	    9,900원</p>
	  </div>
	</div>
	<div style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/2.4.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left;">[아임제주]제주 메밀국수<br>
	    8,400원</p>
	  </div>
	</div>
<div style="width: 100%; text-align: center;">
	<h3 style=" text-align: center; margin-top:100px; margin-bottom:50px;">3만원 미만 인기 신상품 추천</h3>
	<div  style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/3.1.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left;">[Kurly's]국산콩 두부 300g<br>
	    1,900원</p>
	  </div>
	</div>
	<div style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/3.2.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left ;">[KF365]애호박 1개<br>
	    1,890원</p>
	  </div>
	</div>
	<div  style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/3.3.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left;">[다향오리]훈제오리 150g<br>
	    2,980원</p>
	  </div>
	</div>
	<div style="width: 16rem; display: inline-block;">
	  <img src="/infra/resources/images/3.4.PNG" class="card-img-top" alt="...">
	  <div class="card-body">
	    <p class="card-text" style=" text-align:left;">[하림]냉장 닭가슴살 4종<br>
	    1,700원</p>
	  </div>
	</div>
		
</div>
<lsection style="margin-top:10%;float: left; width: 50%;  margin-left:50px;">
		<div style="float: left; width: 50%; text-align:right; ">
			<h4 style="display: block;">고객행복센터</h4>
			<h3 style="display: inline;">1644-1107</h3>
			<br>
			<button class="btn btn" style="color: gray; border-color: gray; font-weight: bold; margin-top:8%; width: 130px;" type="button">카카오톡 문의</button>
			<br>
			<button class="btn btn" style="color: gray; border-color: gray; font-weight: bold; margin-top:8%; width: 130px; " type="button">1:1 문의</button>
			<br>
			<button class="btn btn" style="color: gray; border-color: gray; font-weight: bold; margin-top:8%; width: 130px; " type="button">대량주문 문의</button>
		</div>
	
		<div style="float: left; width: 40%; margin-top:4%; margin-left:10px; text-align:left; ">
			<p style="display: inline; font-size: 15px;">365고객센터</p>
			<br>
			<p style="display: inline; font-size: 12px;">오전 7시 - 오후7시 </p>
			<br>
			<br>
			<p style="display: inline; font-size: 15px;">365고객센터</p>
			<br>
			<p style="display: inline; font-size: 12px;">오전 7시 - 오후7시 </p>
			<br>
			<br>
			<p style="display: inline; font-size: 15px;">24시간 접수가능</p>
			<br>
			<p style="display: inline; font-size: 12px;">고객센터 운영시간에 순차적으로 답변해드리겠습니다. </p>
			<br>
			<br>
			<p style="display: inline; font-size: 12px;">비회원의 경우 메일로 문의 바랍니다.</p>
		</div>


</lsection>		
<rsection style="float: right; width: 45%; text-align:left; margin-top:10%; ">
		<a style="color: black; text-decoration-line:none; " href="#">컬리소개</a>
		<a style="color: black; text-decoration-line:none; " href="#">컬리소개영상</a>
		<a style="color: black; text-decoration-line:none; " href="#">인재채용</a>
		<a style="color: black; text-decoration-line:none; " href="#">이용약관</a>
		<a style="color: black; text-decoration-line:none; " href="#">개인정보처리방침</a>
		<a style="color: black; text-decoration-line:none; " href="#">이용안내</a>
		<br>
		<p style="font-size: 12px; margin:1px;">법인명(상호) : 주식회사 컬리 | 사업자등록번호:261-81-23567 </p>
		<p style="font-size: 12px;margin:1px;">통신판매업:제 2018-서울강남-01646호 | 개인정보보호책임자 : 이원준 </p>
		<p style="font-size: 12px;margin:1px;">주소 : 서울특별시 강남구 테헤란로 133,18층(역삼동) | 대표이사 : 김슬아 </p>
		<p style="font-size: 12px;margin:1px;">입점문의 : 입점문의하기 | 마케팅제휴 : business@kurlycorp.com</p>
		<p style="font-size: 12px;margin:1px;">채용문의:recruit@kurlycorp.com</p>
		<p style="font-size: 12px;margin:1px;">팩스:070-7500-6098 | 이메일 : help@kurlycorp.com</p>
		<p style="font-size: 12px;margin:1px; margin-bottom:30px;">대량주문 문의 : kurlygift@kurlrycorp.com</p>
		<input type="image" src="/infra/resources/images/icon_round_facebook_48.png" style="width: 40px;">
		<input type="image" src="/infra/resources/images/icon_round_instgram_48.png" style="width: 40px;">
		<input type="image" src="/infra/resources/images/icon_round_kakao_48.png" style="width: 40px;">
		<input type="image" src="/infra/resources/images/icon_round_twitter_48.png" style="width: 40px;">
</rsection>
<footer style="clear: both; background-color:silver; ; text-align: center;">
<p style="font-size: 10px;">마켓컬리에서 판매되는 상품 중에는 마켓컬리에 입점한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어 있습니다.<br>
마켓플레이스(오픈마켓) 상품의 경우 컬리는 통신판매중개자로서 통신판매의 당사자가 아닙니다. 컬리는 해당 상품의 주문,품질,교환/환불 등 의무와 책임을 부담하지 않습니다.<br>
KURLY CORP. ALL RIGHTS RESERVED</p>


</footer>
</form>
<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/infra/resources/js/validation.js"></script>
<script type="text/javascript">
goSignUp = function() {
	$("#formList").attr("action","/infra/member/signUp");
	$("#formList").submit();
}
goLogIn = function() {
	$("#formList").attr("action","/infra/member/logIn");
	$("#formList").submit();
}
goBasket = function() {
	$("#formList").attr("action","/infra/order/basket");
	$("#formList").submit();
}

</script>

</body>
</html>