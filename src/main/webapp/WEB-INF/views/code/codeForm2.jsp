<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>




<form method="post" action="/infra/code/codeUpdt">
	<input type="text" name="ifcdSeq" placeholder="ifcdSeq" value=<c:out value="${item.ifcdSeq}"/>> 
	<input type="text" name="ifcdName" placeholder="ifcdname" value=<c:out value="${item.ifcdName}"/>> 
	<input type="submit" value="제출">
</form>