<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div id="navi" style="background:pink; height:100%;">
<c:forEach items="${menuList}" var="menu">
	<c:if test="${menu.menuLevel==1}">
		<a href="/workout${menu.menuPath}">${menu.menuName}</a><br/>
	</c:if>
	<c:if test="${menu.menuLevel==2}">
		<a href="/workout${menu.menuPath}"> ㄴ ${menu.menuName}</a><br/>
	</c:if>
</c:forEach>
</div>