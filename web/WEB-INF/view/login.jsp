<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html style="font-size: 16px;">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="utf-8">
  <meta name="keywords" content="CaseLytics, Login">
  <meta name="description" content="CaseLytics">
  <title>CaseLytics Login</title>
  <link rel="stylesheet" type="text/css" href="../../css/nicepage.css" media="screen"/>
  <link rel="stylesheet" type="text/css" href="../../css/login.css" media="screen"/>
  <!--<script class="u-script" type="text/javascript" src="../../css/jquery.js" defer=""></script>-->
  <script class="u-script" type="text/javascript" src="../../css/nicepage.js" defer=""></script>
  <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

  <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"name": "",
		"url": "index.html"
}</script>
  <link rel="canonical" href="login.jsp">
</head>
<body class="u-body"><header class="u-clearfix u-header u-palette-4-light-2 u-sticky u-header" id="sec-f883"><div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
  <h2 class="u-text u-text-body-color u-text-default u-text-1"><b>Case</b>Lytics
  </h2>
</div></header>
<section class="u-align-center u-clearfix u-section-1" id="sec-7e93">
  <div class="u-clearfix u-sheet u-sheet-1">
    <h2 class="u-heading-font u-subtitle u-text u-text-1">Log<b>In</b>
    </h2>
    <div class="u-form u-form-1">
      <form action="${pageContext.request.contextPath}/login" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px;" >
        <div class="u-form-group u-form-group-1">
          <label for="username" class="u-form-control-hidden u-label"></label>
          <input type="text" placeholder="ID" id="username" name="username" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" required="required">
        </div>
        <div class="u-form-group u-form-group-2">
          <label for="password" class="u-form-control-hidden u-label"></label>
          <input type="password" placeholder="Password" id="password" name="password" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" required="required">
        </div>
        <div class="u-form-group u-form-submit u-form-group-3">
          <input type="submit" value="Login" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">
        </div>
      </form>
    </div>
  </div>
</section>


<footer class="u-align-left u-clearfix u-footer u-grey-80 u-footer" id="sec-52e5"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
  <p class="u-text u-text-default u-text-1">CaseLytics</p>
</div></footer>
</body>
</html>