<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN HOME</title>
</head>
<style>
#logo{
	display:flex;
	justify-content: center;
	height:50px;
	width:100%;
	margin-top:40px;
	border-bottom: 1px solid black;
}
#logo>img{
	height:30px;
}
#logo>span{
	font-size:15pt;  
	margin-left: 30px;
}
</style> 
<div id="logo">
	<!-- 로고 클릭 시 홈페이지 이동 -->
	<img src="${pageContext.request.contextPath}/resources/images/common/hyundai_logo_white.png">
	<span>관리자</span>
</div>