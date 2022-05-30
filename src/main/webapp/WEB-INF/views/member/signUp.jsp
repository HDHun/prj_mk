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

<title>signUp</title>
<style type="text/css">
</style>
</head>
<body class="container-fluid">
	<%@ include file="/WEB-INF/views/include/topBar.jsp" %>
	    
	    
	    
	    <!-- 이모티콘 버튼 -->
<form method="post" action="/infra/member/UserInst">
	<input type="hidden" id="ifmmSeq" name ="ifmmSeq">
	<div style="text-align: center; margin-top:100px;">
		<h4 style="font-weight:bold; ">회원가입</h4>
	</div>	
	<div class="container">
		<table class="table" style="margin-right:auto; margin-left:auto;">
			<tr>
				<td style="text-align: right; vertical-align:middle; font-weight: bold; border-bottom: none;">아이디</td>
				<td style=" border-bottom: none; width: 400px;"><input type="text" class="form-control" id="ifmmId" name="ifmmId" placeholder="아이디를 입력해주세요." style="width:400px; height:55px;"></td>
				<td style=" border-bottom: none; vertical-align:middle;"><button class="btn btn" style=" color: purple; border-color: purple; font-weight: bold; height: 50px;">중복확인</button></td>
			
			</tr>
		
			<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;">비밀번호</td>
				<td style=" border-bottom: none;"><input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" placeholder="비밀번호를 입력해주세요." style="width:400px; height:55px;"></td>
			</tr>
		
			<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;">비밀번호확인</td>
				<td style=" border-bottom: none;"><input type="password" class="form-control" id="ifmmPassword2" name="ifmmPassword2" placeholder="비밀번호를 한번 더 입력해주세요." style="width:400px; height:55px;"></td>
			</tr>
		
			<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;">이름</td>
				<td style=" border-bottom: none;"><input type="text" class="form-control" id="ifmmName" name="ifmmName" placeholder="이름을 입력해주세요." style="width:400px; height:55px;"></td>
			</tr>
		
			<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;">이메일</td>
				<td style=" border-bottom: none;"><input type="text" class="form-control" id="ifmeEmailFull" name="ifmeEmailFull" placeholder="예: marketkurly@kurly.com" style="width:400px; height:55px;"></td>
				<td style=" border-bottom: none; vertical-align:middle;"><button class="btn btn" style="color: purple; border-color: purple; font-weight: bold; height: 50px;" type="button">중복확인</button></td>
			
			</tr>
		
			<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;">휴대폰</td>
				<td style=" border-bottom: none;"><input type="text" class="form-control" id="ifmpNumber" name="ifmpNumber" placeholder="숫자만 입력해주세요." style="width:400px; height:55px;"></td>
				<td style=" border-bottom: none; vertical-align:middle;"><button class="btn btn" style="color: purple; border-color: purple; font-weight: bold; height: 50px;" type="button">인증번호받기</button></td>
			</tr>
		
			<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;">주소</td>
				<td style=" border-bottom: none; vertical-align:middle;">
				<button class="btn btn" type="button" onclick="sample6_execDaumPostcode()" style="color: purple; border-color: purple; font-weight: bold; height: 50px; width: 400px;">주소검색</button>
				<input type="text" class="form-control" id="ifmaAddress1" name="ifmaAddress1" placeholder="주소를 입력해주세요." style="width:400px; height:55px;">
				<input type="hidden" class="form-control" id="ifmaZipcode" name="ifmaZipcode">
				<input type="text" class="form-control" id="ifmaAddress2" name="ifmaAddress2" style="width:400px; height:55px;">
				<input type="text" class="form-control" id="ifmaAddress3" name="ifmaAddress3" placeholder="상세주소를 입력해주세요." style="width:400px; height:55px;">
				</td>
			</tr>
			
			
			<tr>
				<td style=" border-bottom: none; vertical-align:middle;"></td>
				<td style=" border-bottom: none; vertical-align:middle; font-size: 12px;">배송지에 따라 상품 정보가 달라질 수 있습니다.</td>
			</tr>
		
			<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;">성별</td>
				<td style=" border-bottom: none; vertical-align:middle;">
  				<select class="form-select form-select-sm" id="ifmmGenderCd" name="ifmmGenderCd">
						<option value="0">::성별::</option>
							
						<option value="1">남성</option>	
							
						<option value="2">여성</option>	
							
						<option value="3">선택 안함</option>	
							
					</select>
				</td>
			</tr>
				<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;">생년월일</td>
				<td style="border-bottom-color: black;">
				<input  class="form-control" type="text" style="width:400px; height:55px;" name="ifmmDob" id="ifmmDob" autocomplete="off">
				<!-- <input type="date" class="" id="birth" style="width:400px; height:55px;"> -->
				</td>
			</tr>
			<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;">이용약관 동의</td>
				<td style=" border-bottom: none;">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""id="checkboxAgreeAll" name="" style="vertical-align: middle;">
						<label class="form-check-label" for="flexCheckDefault" style="width: 400px;font-size: 20px; font-weight: bolder;">전체 동의합니다.</label>
					</div>
					<div class="form-check" style="margin-top:10px;">
						<input class="form-check-input" type="checkbox" value=""id="ifmmUseConsentNy" name="ifmmUseConsentNy" style="vertical-align: middle;">
						<label class="form-check-label" for="flexCheckDefault" style="width: 400px;">이용 약관 동의(필수)</label>
					</div>
					<div class="form-check" style="margin-top:10px;">
						<input class="form-check-input" type="checkbox" value=""id="ifmmPersonalMustConsentNy" name="ifmmPersonalMustConsentNy" style="vertical-align: middle;">
						<label class="form-check-label" for="flexCheckDefault" style="width: 400px;">개인정보 수집·이용 동의(필수)</label>
						<br>
					</div>
					<div class="form-check" style="margin-top:10px;">
						<input class="form-check-input" type="checkbox" value=""id="ifmmPersonalConsentNy" name="ifmmPersonalConsentNy" style="vertical-align: middle;">
						<label class="form-check-label" for="flexCheckDefault" style="width: 400px;">개인정보 수집·이용 동의(선택)</label>
						<br>
					</div>
					<div class="form-check" style="margin-top:10px;">
						<input class="form-check-input" type="checkbox" value=""id="ifmmDiscountConsentNy" name="ifmmDiscountConsentNy" style="vertical-align: middle;">
						<label class="form-check-label" for="flexCheckDefault" style="width: 400px;">무료배송,할인쿠폰 등 혜택/정보 수신 동의(선택)</label>
						<br>
					</div>
					<div class="form-check" style="margin-top:10px;">
						<input class="form-check-input" type="checkbox" value=""id="ifmmAgeConsentNy" name="ifmmAgeConsentNy" style="vertical-align: middle;">
						<label class="form-check-label" for="flexCheckDefault" style="width: 400px;">본인은 만 14세 이상입니다.(필수)</label>
						<br>
					</div>
				</td>
			</tr>
			<tr>
				<td style="text-align: right;  vertical-align:middle; font-weight: bold; border-bottom: none;"></td>
				<td style=" border-bottom: none; vertical-align:middle;">
					<button class="btn btn" type="submit" style="color:white; background-color: purple; font-weight: bold; height: 50px; width: 300px;">가입하기</button>
				</td>
			</tr>
		</table>
	</div>
	
</form>
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

	<script src="/infra/resources/_bootstrap/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
<script type="text/javascript">

$("#ifmaAddress1").hide();
$("#ifmaAddress2").hide();

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
$(document).ready(function(){
	 $("#ifmmDob").datepicker();
}); 
$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
    });
    

$("#checkboxAgreeAll").click(function() {
	if($("#checkboxAgreeAll").is(":checked")){
		$("input[name=ifmmUseConsentNy]").prop("checked", true)
		$("input[name=ifmmPersonalMustConsentNy]").prop("checked", true)
		$("input[name=ifmmPersonalConsentNy]").prop("checked", true)
		$("input[name=ifmmDiscountConsentNy]").prop("checked", true)
		$("input[name=ifmmAgeConsentNy]").prop("checked", true);
		} else {
		 	$("input[name=ifmmUseConsentNy]").prop("checked", false)
			$("input[name=ifmmPersonalMustConsentNy]").prop("checked", false)
			$("input[name=ifmmPersonalConsentNy]").prop("checked", false)
			$("input[name=ifmmDiscountConsentNy]").prop("checked", false)
			$("input[name=ifmmAgeConsentNy]").prop("checked", false); 
			
			}
});

if($("input:checkbox[name=ifmmUseConsentNy]").is(":checked")){
	$("#ifmmUseConsentNy").val(1);
	
} else {
	$("#ifmmUseConsentNy").val(0);
}

if($("input:checkbox[name=ifmmPersonalMustConsentNy]").is(":checked")){
	$("#ifmmPersonalMustConsentNy").val(1);
	
} else {
	$("#ifmmPersonalMustConsentNy").val(0);
}

if($("input:checkbox[name=ifmmPersonalConsentNy]").is(":checked")){
	$("#ifmmPersonalConsentNy").val(1);
	
} else {
	$("#ifmmPersonalConsentNy").val(0);
}

if($("input:checkbox[name=ifmmDiscountConsentNy]").is(":checked")){
	$("#ifmmDiscountConsentNy").val(1);
	
} else {
	$("#ifmmDiscountConsentNy").val(0);
}

if($("input:checkbox[name=ifmmAgeConsentNy]").is(":checked")){
	$("#ifmmAgeConsentNy").val(1);
	
} else {
	$("#ifmmAgeConsentNy").val(0);
}
 








    
</script>
	
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("ifmaAddress2").value = extraAddr;
                
                } else {
                    document.getElementById("ifmaAddress2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('ifmaZipcode').value = data.zonecode;
                document.getElementById("ifmaAddress1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
				$("#ifmaAddress1").show();
				$("#ifmaAddress2").show();
                document.getElementById("ifmaAddress3").focus();
            }
        }).open();
    }
</script>

</body>
</html>
