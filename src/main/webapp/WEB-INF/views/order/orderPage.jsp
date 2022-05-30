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



<title>orderPage</title>
<style type="text/css">
</style>
</head>
<body class="container-fluid">
	<%@ include file="/WEB-INF/views/include/topBar.jsp" %>
	    
	    
	
	<div style="text-align: center; margin-top:100px;">
		<h4 style="font-weight:bold; ">주문서</h4>
	</div>	
<div class="container">
	<div class="col-10">
		<div class="accordion accordion-flush" id="accordionFlushExample">
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="flush-headingOne">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
		        <h5>주문상품</h5>
		      </button>
		    </h2>
		    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
		      <div class="accordion-body">
		      <image src="/infra/resources/images/3.3.PNG" style="width: 100px;">
		      	<p style="display: inline; margin-left: 50px; margin-right: 10px;">[다향오리]훈제오리 150g</p>
				 <nav aria-label="..." style="display: inline-block; margin-right:50px;  margin-left: 35%;">
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
				<p style="display: inline; margin-left: 50px; margin-right: 50px;">
				2,980원
				</p> 
				</div>
		  </div>
		</div>			
	  </div>
	</div>
	<h5 style="margin-top: 10%;">주문자 정보</h5>
	<table class="col-10" style="border-top: 1px solid black;">
	<tr>
		<td style="font-size:13px; font-weight: bolder; height: 50px;">보내는분</td>
		<td style="font-size:13px;">한동훈</td>
	</tr>
	<tr>
		<td style="font-size:13px; font-weight: bolder; height: 50px;">휴대폰</td>
		<td style="font-size:13px;">01011112222</td>
	</tr>
	<tr>
		<td style="font-size:13px; font-weight: bolder; height: 50px;">이메일</td>
		<td style="font-size:13px;">aaaa@naver.com</td>
	</tr>
	<tr>
		<td style="font-size:13px; font-weight: bolder; height: 50px;"></td>
		<td style="font-size:13px;">이메일을 통해 주문처리과정을 보내드립니다.<br>
		정보 변경은 마이컬리 > 개인정보 수정 메뉴에서 가능합니다.
		
		</td>
	</tr>
		
	</table>
	<h5 style="margin-top: 10%;">배송 정보</h5>
	<table class="col-10" style="border-top: 1px solid black;">
	<tr>
		<td style="font-size:13px; font-weight: bolder; height: 50px;">배송지</td>
		<td style="font-size:13px;">경기 파주시 가온로 256(가람마을11단지 동문굿모닝힐아파트)</td>
	</tr>
	<tr>
		<td style="font-size:13px; font-weight: bolder; height: 50px;">상세정보</td>
		<td style="font-size:13px;">
		<input type="text" class="form-control" placeholder="받으실 분 정보를 입력해주세요">
		</td>
	</tr>
	<tr>
		<td style="font-size:13px; font-weight: bolder;"></td>
		<td style="font-size:13px;">
		 <button class="btn btn" style="color: purple; border-color: purple; font-weight: bold;" type="button">입력</button>
		</td>
	</tr>
	</table>
<image src="../../images/orderPage.PNG" style="margin:20px;"></image>
		<h5 style="margin-top: 10%;">쿠폰/적립금</h5>
	<table class="col-10" style="border-top: 1px solid black;">
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">쿠폰적용</td>
			<td style="font-size:13px;">
				<select class="form-select" aria-label="Default select example">
					<option selected>사용 가능 쿠폰 0개/전체 0개</option>
					<option value="1">One</option>
				</select>
			</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">적립금 적용</td>
			<td style="font-size:13px;">사용 가능한 적립금이 없습니다.</td>
		</tr>
	</table>
		<h5 style="margin-top: 10%;">결제금액</h5>
	<table class="col-10" style="border-top: 1px solid black;">
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">주문금액</td>
			<td style="font-size:13px;">2,980원</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">배송비</td>
			<td style="font-size:13px;">3,000원</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">쿠폰할인금액</td>
			<td style="font-size:13px;">0원</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">적립금사용</td>
			<td style="font-size:13px;">0원</td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">최종결제금액</td>
			<td style="font-size:13px;">5,980원</td>
		</tr>
	</table>
	<h5 style="margin-top: 10%;">결제수단</h5>
	<table class="col-10" style="border-top: 1px solid black;">
	<tr>
		<td style="font-size:13px; font-weight: bolder; height: 50px;">결제수단 선택</td>
		<td style="font-size:13px;"><button class="btn col-8" style="height: 50px; background-color: yellow; font-weight: bold;" type="button">카카오페이</button>
		</td>
	</tr>
	<tr>
		<td style="font-size:13px; font-weight: bolder; height: 50px;"></td>
		<td style="font-size:13px;">
		<div class="btn-group col-8" role="group" aria-label="Basic outlined example" style="height: 50px;">
			<button type="button" class="btn btn-outline-primary">신용카드</button>
			<button type="button" class="btn btn-outline-primary">간편결제</button>
			<button type="button" class="btn btn-outline-primary">휴대폰</button>
		</div>
		</td>
	</tr>
	</table>
	<h5 style="margin-top: 10%;">개인정보 수집/제공</h5>
	<table class="col-10" style="border-top: 1px solid black;">
		<tr>
			<td>
				<h5>
					<div class="form-check" style="display: inline-block;">
						<input class="form-check-input" type="checkbox" value=""id="agree" name=""> 
					</div>결제 진행 필수 동의
				</h5>
			</td>		
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">개인정보 수집·이용 및 처리 동의(필수) </td>
		</tr>
		<tr>
			<td style="font-size:13px; font-weight: bolder; height: 50px;">전자지급 결제대행 서비스 이용약관 동의(필수)</td>
		</tr>
	</table>

	<div style="text-align: center;">
		<button class="btn col-4" style="color: white; background-color: purple; font-weight: bold;" type="button">주문하기</button>
		<p style="font-size: 13px;">[배송준비중] 이전까지 주문 취소 가능합니다.<br>
		미성년자가 결제 시 법정대리인이 그 거래를 취소할 수 있습니다.<br>
		상품 미배송 시, 결제수단으로 환불됩니다.<br>
		카카오페이,차이,토스,네이버페이,페이코 결제 시, 결제하신 수단으로만 환불됩니다.
		</p>
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