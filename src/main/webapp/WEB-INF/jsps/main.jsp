<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>首页</title>
<!-- 导入静态资源链接 -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.css"/>">
</head>
<body>
	<div class="container">
		<h1 class="text-center">Maven_SSM整合</h1>
		<br> <br>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-3 text-center">
				<button type="button" class="btn btn-link"
					onclick="javascript:window.location.href='<c:url value="/ironman/skipInsert"/>'">添加信息</button>
			</div>
			<div class="col-md-3 text-center">
				<button type="button" class="btn btn-link"
					onclick="javascript:window.location.href='<c:url value="/ironman/loadAll"/>'">查询全部</button>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
</body>
</html>