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



<title>productRegist</title>
<style type="text/css">
</style>
</head>
<body class="container-fluid">
	<%@ include file="/WEB-INF/views/include/topBar.jsp" %>
	    
	    
	    <!-- 이모티콘 버튼 -->
	
	<div style="text-align: center; margin-top:100px;">
		<h4 style="font-weight:bold; ">상품등록</h4>
	</div>	
		<div class="container-fluid">
		<input type="image" src="../">
			<div class="row" style="float:none; margin:0 auto;">
					<div class="col-5" style="float:none; margin:0 auto;">
						<input type="text" class="form-control" id="name" placeholder="상품명을 입력해주세요." style="margin:10px; height:55px;">
						<input type="text" class="form-control" id="company" placeholder="유통사를 입력해주세요." style="margin:10px; height:55px;">
						<input type="text" class="form-control" id="makingCompany" placeholder="제조사를 입력해주세요." style="margin:10px; height:55px;">
					</div>
					<div class="col-5" style="float:none; margin:0 auto;">
						<input type="text" class="form-control" id="weight" placeholder="중량을 입력해주세요." style="margin:10px; height:55px;">
						<input type="text" class="form-control" id="packing" placeholder="포장재질을 입력해주세요." style="margin:10px; height:55px;">
						<input type="text" class="form-control" id="Number" placeholder="품목보고번호를 입력해주세요." style="margin:10px; height:55px;">
					</div>
					<div class="col-5" style="float:none; margin:0 auto;">
						<input type="text" class="form-control" id="keep" placeholder="보관방법을 입력해주세요." style="margin:10px; height:55px;">
						<input type="text" class="form-control" id="origin" placeholder="원산지를 입력해주세요." style="margin:10px; height:55px;">
						<select class="form-select" aria-label="Default select example" style="margin:10px; height:55px;">
						  <option selected>카테고리</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>
					</div>
					<div class="col-5" style="float:none; margin:0 auto;">
						<input type="text" class="form-control" id="cal_period" placeholder="유통기한을 입력해주세요." style="margin:10px; height:55px;">
						<input type="text" class="form-control" id="price" placeholder="가격을 입력해주세요." style="margin:10px; height:55px;">
						<input type="text" class="form-control" id="desc" placeholder="기타정보를 입력해주세요." style="margin:10px; height:55px;">
					</div>
					
						<div style="text-align: center;">
						  <button class="btn btn col-5" style="color: purple; border-color: purple; font-weight: bold; height: 50px;" type="button">등록</button>
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
</footer>
KURLY CORP. ALL RIGHTS RESERVED</p>
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