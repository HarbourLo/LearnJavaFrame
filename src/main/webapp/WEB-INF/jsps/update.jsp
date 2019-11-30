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
<title>修改数据</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.css"/>">
</head>
<body>
	<div class="container">
		<h1>
			<a href="<c:url value="/ironman/skipMain"/>"><img alt="首页"
				src="<c:url value="/resources/img/th.jpg"/>" width="41px"
				height="41px"></a> 修改数据：
		</h1>
		<br>
		<form class="form-horizontal" id="update"
			action="<c:url value="/ironman/${ironman.stuNo}"/>" method="POST">
			<!-- 为了满足RESTFUL API，在action地址后缀加上id，但因为传回去的实体类已有该值，会报一个[warn] 提示已有该变量，重复传递了 -->
			<!-- POST提交转化为PUT提交 -->
			<input type="hidden" name="_method" value="PUT">
			<div class="form-group ">
				<label class="col-sm-2 control-label">学号：</label>
				<div class="col-sm-10">
					<input type="text" name="stuNo" class="form-control"
						placeholder="原学号：${ironman.stuNo}" value="${ironman.stuNo}"
						readonly="readonly">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">姓名：</label>
				<div class="col-sm-10">
					<input type="text" name="stuName" class="form-control"
						placeholder="原姓名：${ironman.stuName}" value="${ironman.stuName}"
						readonly="readonly">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">专业：</label>
				<div class="col-sm-10">
					<input type="text" name="stuMajor" class="form-control"
						placeholder="原专业：${ironman.stuMajor}" value="${ironman.stuMajor}"
						readonly="readonly">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">课程：</label>
				<div class="col-sm-10">
					<input type="text" name="stuCourse" class="form-control"
						placeholder="原课程：${ironman.stuCourse}"
						value="${ironman.stuCourse}" readonly="readonly">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">分数：</label>
				<div class="col-sm-10">
					<input type="text" name="stuScore" class="form-control"
						placeholder="原分数：${ironman.stuScore}" value="${ironman.stuScore}">
				</div>
			</div>
			<br>
			<button type="submit" form="update"
				class="btn btn-primary btn-lg btn-block">提交修改</button>
		</form>
		<button type="button" class="btn btn-link center-block"
			onclick="javascript:window.location.href='<c:url value="/ironman/loadAll"/>'">取消修改，返回</button>
	</div>
</body>
</html>