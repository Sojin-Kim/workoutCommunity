<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp"></jsp:include>
<style>
	#left-nav{
		float: left;
		width:25%;
		height:800px;
	}
	#right-nav{
		float: right;
		width:75%;
		height:800px;
	}
</style>
<body>
<div id="box">
	<div id="left-nav">
		<jsp:include page="/WEB-INF/views/admin/leftNavigation.jsp"></jsp:include>
	</div>
	<div id="right-nav">
		<div style="background:gray;height:100%;">오른쪽</div>
	</div>
</div>
</body>
</html>