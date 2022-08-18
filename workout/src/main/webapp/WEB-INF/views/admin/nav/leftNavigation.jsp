<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div id="navi">
	<div id="navi-items">
		<c:forEach items="${menuList}" var="menu" varStatus="status">
			<c:if test="${menu.menuLevel==1 && status.index != 0}">
				<!-- 부모레벨이거나 첫번째가 아닐경우 부모레벨 ul태그 닫아주기 -->
				</ul>
			</c:if>
			<c:if test="${menu.menuLevel==1}">
				<!-- 부모레벨 ul태그 열어주기 -->
				<ul>
					<div class="naviParents">
						<img class="minus-button" src="${pageContext.request.contextPath}/resources/images/admin/navi-minus-button.png">
						<img class="plus-button" src="${pageContext.request.contextPath}/resources/images/admin/navi-plus-button.png">
						${menu.menuName}
					</div>
			</c:if>
			<c:if test="${menu.menuLevel==2}">
				<!-- 자식레벨 li태그 -->
				<li class="naviChilds" onclick="fncSubLink('${menu.menuPath}')">
					<a class="sub_link"><span> - ${menu.menuName}</span></a>
				</li>
			</c:if>
		</c:forEach>
		<!-- 부모레벨 ul태그 맨 마지막 닫아주기 -->
			</ul>
	</div>
</div>

<script type="text/javascript">
/**
 * 함수명(fncSubLink)	: 메뉴 클릭 시 해당 화면 조회
 * 파라미터(urlPath) 	: 화면호출 url경로
 * 2022-08-18 ksj
 */
function fncSubLink(urlPath){
	if(urlPath == ""){
    	$("#right-nav").html("경로가 설정되지 않았습니다.");	// 미개발 화면 호출
		return;
	}
	$.ajax({
	    url: urlPath, //request 보낼 서버의 경로
	    type:'get', // 메소드(get, post, p 
	    success: function(data) {
	        //서버로부터 정상적으로 응답이 왔을 때 실행
	    	$("#right-nav").html(data);	//오른쪽 div에 화면 호출
	    },
	    error: function(err) {
	        //서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
	    	$("#right-nav").html(err);	//오른쪽 div에 에러 호출
	    }
	});
}

$(".naviParents").on("click",function(){
	if ($(this).children(".minus-button").css('display') == 'inline-block') {
		$(this).children(".plus-button").css("display","inline-block");
		$(this).children(".minus-button").css("display","none");
		$(this).parent().children(".naviChilds").hide();
	}else{
		$(this).children(".plus-button").css("display","none");
		$(this).children(".minus-button").css("display","inline-block");
		$(this).parent().children(".naviChilds").show();
	}
});
</script>