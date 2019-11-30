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
<title>添加数据</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.css"/>">
</head>
<body>
	<div class="container">
		<h1><a href="<c:url value="/ironman/skipMain"/>"><img alt="首页"
				src="<c:url value="/resources/img/th.jpg"/>" width="41px"
				height="41px"></a>填写信息：</h1>
		<br>
		<form class="form-horizontal" action="<c:url value="/ironman"/>"
			method="POST">
			<div class="form-group ">
				<label class="col-sm-2 control-label">学号：</label>
				<div class="col-sm-10">
					<input type="text" name="stuNo" class="form-control"
						placeholder="学号">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">姓名：</label>
				<div class="col-sm-10">
					<input type="text" name="stuName" class="form-control"
						placeholder="姓名">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">专业：</label>
				<div class="col-sm-10">
					<input type="text" name="stuMajor" class="form-control"
						placeholder="专业">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">课程：</label>
				<div class="col-sm-10">
					<input type="text" name="stuCourse" class="form-control"
						placeholder="课程">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">分数：</label>
				<div class="col-sm-10">
					<input type="text" name="stuScore" class="form-control"
						placeholder="分数">
				</div>
			</div>
			<br>
			<button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
		</form>
	</div>
</body>
</html>