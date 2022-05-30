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



<title>productView</title>
<style type="text/css">
</style>
</head>
<body class="container-fluid">
	<%@ include file="/WEB-INF/views/include/topBar.jsp" %>
	
<lmain style="float: left; margin-top:50px;margin-left:50px; margin-right:0px; width:45%; text-align: right;">
	<image src="/infra/resources/images/productDetail.PNG">
</lmain>

<rmain style="float: right; margin-top:50px;margin-right:50px; margin-left:0px; text-align:left; width:45%;">
	<h3 style="display: inline-block; margin-bottom: 50px;">[다향오리]훈제오리 150g</h3>
	<h3>2,980원</h3>
	<table class="col-10" style="border-top: 1px solid black;">
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px; width:150px;">판매단위</td>
			<td style="font-size:13px;">1팩</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">중량/용량</td>
			<td style="font-size:13px;">150g</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">배송구분</td>
			<td style="font-size:13px;">샛별배송/택배배송</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">포장타입</td>
			<td style="font-size:13px;">냉장/스티로폼</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">알레르기정보</td>
			<td style="font-size:13px;">-우유,대두,밀,쇠고기 함유<br>-본 제품은 알류,메밀,땅콩,게,새우,돼지고기,복숭아,토마토,호두,닭,고기,
			오징어,조개류(굴,전복,홍합 포함),아황산류,잣을 사용한 제조시설에서 같이 제조하고 있습니다.</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">유통기한</td>
			<td style="font-size:13px;">수령일 포함 최소 15일 이상 남은 제품을 보내드립니다.</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">안내사항</td>
			<td style="font-size:13px;">-해당 상품 최소 구매수량 2개인 점 안내드립니다.</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">구매수량</td>
			<td style="font-size:13px;">
			<nav aria-label="..." style="display: inline-block; margin-right:50px;  margin-left: 50px;">
					  <ul class="pagination">
					    <li class="page-item disabled">
					      <span class="page-link">-</span>
					    </li>
					    <li class="page-item active" aria-current="page">
					      <span class="page-link">2</span>
					    </li>
					    <li class="page-item">
					      <a class="page-link" href="#">+</a>
					    </li>
					  </ul>
					</nav>
			</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">총 상품금액</td>
			<td style="font-size:13px;"><h3>2,980원</h3></td>
		</tr>
	</table>
	<button class="btn" style="color: white; background-color: purple; width:600px; font-weight: bold;" type="button">장바구니 담기</button>
</rmain>

	    
<main style="clear: both;">
</main>
<div style="margin-left:15%; margin-right:15%;">
	<ul class="nav nav-tabs justify-content-center" >
	  <li class="nav-item" style=" border: solid 1px #eee; width: 300px; height: 50px; text-align: center;">
	    <a class="nav-link" aria-current="page" href="#" style="color: gray;  font-size: 18px; font-weight: bold;">상품설명</a>
	  </li>
	  <li class="nav-item" style=" border: solid 1px #eee; width: 300px; height: 50px;  text-align: center;">
	    <a class="nav-link" href="#" style="color: gray;   font-size: 18px; font-weight: bold;">상세정보</a>
	  </li>
	  <li class="nav-item" style="border: solid 1px #eee; width: 300px; height: 50px;  text-align: center;">
	    <a class="nav-link" href="#" style="color: gray;   font-size: 18px; font-weight: bold;">후기</a>
	  </li>
	  <li class="nav-item" style=" border: solid 1px #eee; width: 300px; height: 50px;  text-align: center;">
	    <a class="nav-link" href="#" style="color: gray;   font-size: 18px; font-weight: bold;">문의</a>
	  </li>
	</ul>
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
<rsection style="float: right; width: 45%; margin-top:10%;">
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