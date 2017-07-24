<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>login</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/signin.css" rel="stylesheet">

  </head>

  <body>
	    <div class="container-fluid">
	      <form action="${pageContext.request.contextPath}/user_login.action" method="post" class="form-signin">
	        <h2 class="form-signin-heading">请登陆</h2>
	        <label for="userName" class="sr-only">用户名</label>
	        <input id="userName" name="userName" class="form-control"  placeholder="用户名" required autofocus>
	        <label for="passWord" class="sr-only">密码</label>
	        <input type="passWord" id="passWord" name="passWord" class="form-control" placeholder="密码" required>
	        <div class="checkbox">
	          <label>
	            <input type="checkbox" value="remember-me">请记住
	          </label>
	        </div>
	        <button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
	      </form>
	    </div> <!-- /container -->
  </body>
</html>
