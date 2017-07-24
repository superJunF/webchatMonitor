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
				  <li role="presentation"><a href="${pageContext.request.contextPath}/monitor/week.jsp">本周数据统计</a></li>
				  <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/monitor/month.jsp">本月数据统计</a></li>
				</ul>
			</div>
			
			<div class="col-md-10">
				<div class="col-md-6">
					<div class="panel panel-default">
					  <div class="panel-heading">数据统计</div>
					  <div class="panel-body">
					    <table class="table table-hover">
						  <thead>
						  	<tr>
						  		<th scope="row">统计项目</th>
						  		<th>昨日</th>
						  		<th>今日</th>
						  	</tr>
						  </thead>
						  <tbody>
						  	<tr>
						  		<th scope="row">进件量</th>
						  		<td>200</td>
						  		<td>300</td>
						  	</tr>
						  	<tr>
						  		<th scope="row">拨打量</th>
						  		<td>200</td>
						  		<td>300</td>
						  	</tr>
						  	<tr>
						  		<th scope="row">人工进线量</th>
						  		<td>200</td>
						  		<td>300</td>
						  	</tr>
						  </tbody>
						</table>
					  </div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="panel panel-default">
					  <div class="panel-heading">
					    <h3 class="panel-title">数据统计2</h3>
					  </div>
					  <div class="panel-body">
					    <table class="table table-striped">
						  <thead>
						  	<tr>
						  		<th scope="row">统计项目</th>
						  		<th>昨日</th>
						  		<th>今日</th>
						  	</tr>
						  </thead>
						  <tbody>
						  	<tr>
						  		<th scope="row">进件量</th>
						  		<td>200</td>
						  		<td>300</td>
						  	</tr>
						  	<tr>
						  		<th scope="row">拨打量</th>
						  		<td>200</td>
						  		<td>300</td>
						  	</tr>
						  	<tr>
						  		<th scope="row">人工进线量</th>
						  		<td>200</td>
						  		<td>300</td>
						  	</tr>
						  </tbody>
						</table>
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
	
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
