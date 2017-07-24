<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>在线客服监控系统</title>
  <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/bootstrap/css/monitor.css" rel="stylesheet">
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fix-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="monitor.jsp" class="navbar-brand">在线客服监控系统</a>
			</div>
			
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;首页</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;用户管理</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
	 					 <a id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">
	   					 	admin
	    					<span class="caret"></span>
	  					 </a>
	  					 <ul class="dropdown-menu" aria-labelledby="dLabel">
					    	<li><a href="#">修改密码</a></li>
					    	<li><a href="#">个人设置</a></li>
					  	 </ul>
					</li>
					<li><a href="#"><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;退出</a></li>
				</ul>
			</div>
		</div>
		
	</nav>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<ul class="nav nav-pills nav-stacked">
				  <li role="presentation"><a href="${pageContext.request.contextPath}/monitor.jsp">今日数据统计</a></li>
				  <li role="presentation"  class="active"><a href="${pageContext.request.contextPath}/monitor/week.jsp">本周数据统计</a></li>
				  <li role="presentation"><a href="${pageContext.request.contextPath}/monitor/month.jsp">本月数据统计</a></li>
				</ul>
			</div>
			<div class="col-md-10">
			<div class="row">
				<div class="col-md-6">
		            <div class="panel panel-default">
		                <div class="panel-heading">今日访客统计</div>
		                <div class="panel-body">
		                    <canvas id="canvas" class="col-md-12"></canvas>
		                </div>
		            </div>
        		</div>
        		<div class="col-md-6">
        		<div class="panel panel-default">
	                <div class="panel-heading">服务器状态</div>
	                <div class="panel-body">
		            <p>cup已使用40%</p>
		            <div class="progress">
						  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
						  </div>
					</div>
					<p>硬盘已使用60%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
					  </div>
					</div>
					<p>内存已使用20%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
					  </div>
					</div>
					<p>cup已使用40%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
					  </div>
					</div>
					</div>
        		</div>
        	</div>
        	</div>
        	<div class="row">
				<div class="col-md-6">
		            <div class="panel panel-default">
		                <div class="panel-heading">今日访客统计</div>
		                <div class="panel-body">
		                    <canvas id="canvas" class="col-md-12"></canvas>
		                </div>
		            </div>
        		</div>
        		<div class="col-md-6">
		            <div class="panel panel-default">
		                <div class="panel-heading">今日访客统计</div>
		                <div class="panel-body">
		                    <canvas id="canvas" class="col-md-12"></canvas>
		                </div>
		            </div>
        		</div>
        	</div>
			</div>
		</div>
	</div>  
	
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/Chart.js"></script>
	<script src="${pageContext.request.contextPath}/bootstrap/js/script.js"></script>
</body>
</html>
