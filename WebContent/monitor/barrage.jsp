<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>在线客服监控系统</title>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/monitor.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/barrage/css/barrage.css" rel="stylesheet">
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fix-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="${pageContext.request.contextPath}/monitor.jsp"
					class="navbar-brand">在线客服监控系统</a>
			</div>

			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/monitor.jsp"><span
							class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;首页</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;用户管理</a></li>
					<li class="active"><a
						href="${pageContext.request.contextPath}/monitor/barrage.jsp"><span
							class="glyphicon glyphicon-flag"></span>&nbsp;&nbsp;弹幕</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a id="dLabel" type="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						href="#"> admin <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" aria-labelledby="dLabel">
							<li><a href="#">修改密码</a></li>
							<li><a href="#">个人设置</a></li>
						</ul></li>
					<li><a href="#"><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;退出</a></li>
				</ul>
			</div>
		</div>

	</nav>

	<div class="barrage">
		<div class="screen">
			<a href="#" class="s_close">X</a>
			<div class="mask">
				<!--内容在这里显示-->
			</div>
		</div>
		<!--Send Begin-->
		<div class="send">
			<input type="text" class="s_text" /> <input type="button"
				class="s_btn" value="说两句" />
		</div>
		<!--Send End-->
		<span class="s_close">X</span>
	</div>

	<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
