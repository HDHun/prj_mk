<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<form id ="formList" name="" method="post" action="/infra/code/codeGroupList">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" id="ifcgSeq" name ="ifcgSeq">

	<select name="shIfcgDelNy">
		<option value="">::삭제여부::
		<option value="1" <c:if test="${vo.shIfcgDelNy eq 1}">selected</c:if>> Y
		<option value="0"<c:if test="${vo.shIfcgDelNy eq 0}">selected</c:if>>N
	</select>



	||
	그룹이름 : <input type="text" name="shIfcgName" id="shIfcgName" value="<c:out value="${vo.shIfcgName}"/>">
	||

	<select id="shOption" name="shOption">
		<option value="0">::검색구분::
		<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>한글
		<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>영문
	</select>

	<input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="Submit" id="btnSubmit">
<!-- <input type="Submit" id="btnSubmit2" name="search">
$("#btnSubmit").on("click", function(){

	if(	!checkNull($("#shValue"), $("#shValue").val(), "2번쨰버튼.")) return false;
	}); -->


	<br>
	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>	
		</c:when>
		<c:otherwise>
		
			<c:forEach items="${list}" var="item" varStatus="status">	
			
			<c:out value="${item.ifcgSeq}"/> | <a href="javascript:goForm(<c:out value="${item.ifcgSeq}"/>);"><c:out value="${item.ifcgName}"/></a>| <c:out value="${item.ifcgNameEng}"/>| <c:out value="${item.ifcgDelNy}"/> <br>
			
	<%-- 		<c:out value="${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView?ifcgSeq=${item.ifcgSeq}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"><c:out value="${item.ifcgName}"/></a>| <c:out value="${item.ifcgNameEng}"/>| <c:out value="${item.ifcgDelNy}"/> <br>
			 --%>
			</c:forEach>
		</c:otherwise>
	</c:choose>	 
</form>


<nav aria-label="...">
  <ul class="pagination">
	<c:if test="${vo.startPage gt vo.pageNumToShow}">
		<li class="page-item"><a class="page-link" href="javascript:abc(<c:out value='${vo.startPage - 1}'/>);">Previous</a></li>
	</c:if>
	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
		<c:choose>
			<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="javascript:abc(<c:out value='${i.index}'/>);">${i.index}</a></li>
			</c:when>
			<c:otherwise>             
                <li class="page-item"><a class="page-link" href="javascript:abc(<c:out value='${i.index}'/>);">${i.index}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>     
	<c:if test="${vo.endPage ne vo.totalPages}">                
		<li class="page-item"><a class="page-link" href="javascrpit:abc(<c:out value='${vo.startPage + 1}'/>)">Next</a></li>
	</c:if>  
  </ul>
</nav>
<%-- <nav aria-label="...">
  <ul class="pagination">
	<c:if test="${vo.startPage gt vo.pageNumToShow}">
		<li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${vo.startPage - 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">Previous</a></li>
	</c:if>
	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
		<c:choose>
			<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">${i.index}</a></li>
			</c:when>
			<c:otherwise>             
                <li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">${i.index}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>     
	<c:if test="${vo.endPage ne vo.totalPages}">                
		<li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${vo.endPage + 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">Next</a></li>
	</c:if>  
  </ul>
</nav> --%>

<a href="/infra/code/codeGroupForm?shOption=<c:out value="${vo.shOption}"/>&thisPage=<c:out value="${vo.thisPage}"/>&shValue=<c:out value="${vo.shValue}"/>">등록</a>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">
	$("#btnSubmit").on("click", function(){
	if(	!checkNull($("#shValue"), $("#shValue").val(), "검색어를 입력하세요.")) return false;
		
	});
	abc = function(seq) {
		alert(seq);
		// 폼 객체를 가져온다 > 객체를 전달한다
		$("#thisPage").val(seq);
		$("#formList").submit();
	}

	goForm = function(seq) {
		$("#ifcgSeq").val(seq);
		$("#formList").attr("action","/infra/code/codeGroupView");
		$("#formList").submit();
	}
</script>

<!-- 
		/* alert($(#shOption).val()); */
	//	alert($("#shIfcgName").val()); // jquery방식
	//	alert($("#shIfcgDelNy").val()); // jquery방식
	//	alert($("#shOption").val()); // jquery방식
	//	alert($("#shValue").val()); // jquery방식
/* 		alert(document.getElementById("shIfcgName").value); // javascript방식
 */		 -->




