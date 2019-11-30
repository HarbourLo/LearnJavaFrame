<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>查询全部</title>
<!-- 获取静态资源CSS -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.css"/>">
<!-- 获取静态资源JS -->
<script type="text/javascript"
	src="<c:url value="/resources/js/view.js"/>"></script>
<script type="text/javascript">
	function del(stuNo, stuName) {
		if (confirm("确认删除 " + stuName + " 吗？")) {
			document.forms[0].action="<c:url value="/ironman"/>"+"/"+stuNo;
			document.forms[0].submit();
		}
	}
</script>
</head>
<body>
	<div class="container">
		<!-- POST提交转化为DELETE提交 -->
		<form action="" method="POST">
			<input type="hidden" name="_method" value="DELETE">
		</form>
		<h1 class="text-center">
			<a href="<c:url value="/ironman/skipMain"/>"><img alt="首页"
				src="<c:url value="/resources/img/th.jpg"/>" width="41px"
				height="41px"></a>全部信息
		</h1>
		<c:if test="${empty list || list==null}">
			<h2>
				暂时没有数据，<a href="<c:url value="/ironman/skipInsert"/>">点击</a>前往添加新数据
			</h2>
		</c:if>
		<c:if test="${!empty list}">
			<table class="table table-hover table-bordered text-center">
				<thead>
					<tr>
						<td><b>#</b></td>
						<td><b>学号</b></td>
						<td><b>姓名</b></td>
						<td><b>专业</b></td>
						<td><b>课程</b></td>
						<td><b>分数</b></td>
						<td><b>操作</b></td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="stu" items="${list }" varStatus="i">
						<tr>
							<td>${i.index+1 }</td>
							<td>${stu.stuNo }</td>
							<td>${stu.stuName }</td>
							<td>${stu.stuMajor }</td>
							<td>${stu.stuCourse }</td>
							<td>${stu.stuScore }</td>
							<td><button type="button" class="btn btn-success"
									onclick="javascript:window.location.href='<c:url value="/ironman/${stu.stuNo}"/>'">编辑</button>
								<button type="button" class="btn btn-danger"
									onclick="del(${stu.stuNo},'${stu.stuName}')">删除</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<button type="button" class="btn btn-link center-block"
				onclick="javascript:window.location.href='<c:url value="/ironman/skipInsert"/>'">添加新的成绩</button>
		</c:if>

	</div>
</body>
</html>