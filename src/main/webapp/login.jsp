<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="description" content="xxxxx">
<meta name="author" content="xxxxx">
<meta name="keyword" content="xxxxx">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>教务OA网站后台</title>
<!-- start: Css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- plugins -->
<link rel="stylesheet" type="text/css" href="css/plugins/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="css/plugins/simple-line-icons.css"/>
<link rel="stylesheet" type="text/css" href="css/plugins/animate.min.css"/>
<link rel="stylesheet" type="text/css" href="css/plugins/icheck/skins/flat/aero.css"/>
<link href="css/style.css" rel="stylesheet">
<!-- end: Css -->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
<![endif]-->
</head>

<body id="mimin" class="dashboard form-signin-wrapper">
<div class="container">
  <form class="form-signin" role="form" action="/login" id="from1" method="post">
    <div class="panel periodic-login"> <span class="atomic-number">V3.1</span>
      <div class="panel-body text-center">
        <h1 class="atomic-symbol"><img src="img/zl-logo.png" width="30%" alt=""></h1>
        <p class="atomic-mass">教务OA网站后台</p>
        <p class="element-name">管理员端</p>
        <i class="icons icon-arrow-down"></i>

        <div class="form-group form-animate-text" style="margin-top:40px !important;">
          <input type="text" class="form-text" required name="username">
          <span class="bar"></span>
          <label>账号</label>
        </div>
        <div class="form-group form-animate-text" style="margin-top:40px !important;">
          <input type="password" class="form-text" required name="password">
          <span class="bar"></span>
          <label>密码</label>
        </div>

        <input type="submit" class="btn col-md-12" value="登 录"/>
      </div>
      <div class="text-center" style="padding:5px;"> 纯属演示 </div>
    </div>
  </form>
</div>

<script src="js/main.js"></script>

</body>
</html>