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
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css">
</head>
<div id="logo">
	<!-- 로고 클릭 시 홈페이지 이동 -->
	<img src="${pageContext.request.contextPath}/resources/images/common/hyundai_logo_white.png">
	<span>관리자</span>
</div>
<body>
<div id="box">
	<div id="left-nav">
		<jsp:include page="/WEB-INF/views/admin/nav/leftNavigation.jsp"></jsp:include>
	</div>
	<div id="right-nav">

