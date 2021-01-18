<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="CaseLytics, MainPage">
    <meta name="description" content="CaseLytics">
    <title>MainPage</title>
    <link rel="stylesheet" type="text/css" href="../../css/nicepage.css" media="screen">
    <link rel="stylesheet" type="text/css" href="../../css/mainPage.css" media="screen">
    <!--<script class="u-script" type="text/javascript" src="../../css/jquery.js" defer=""></script>-->
    <script class="u-script" type="text/javascript" src="../../css/nicepage.js" defer=""></script>
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html"
}</script>
    <link rel="canonical" href="mainPage.jsp">
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-palette-4-light-2 u-sticky u-header" id="sec-f883"><div class="u-clearfix u-sheet u-sheet-1">
    <h2 class="u-text u-text-body-color u-text-default u-text-1"><b>Case</b>Lytics
        </h2>
    <table style="margin-left: 25px">
    <div>
      <tr>
        <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/logout" style="padding: 10px 0px;">LogOut</a></td>
        <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/mainPage" style="padding: 10px 0px;">MainPage</a></td>
        <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/addCase" style="padding: 10px 0px;">AddCase</a></td>
        <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/allCases" style="padding: 10px 0px;">Cases</a></td>
        <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/schedule" style="padding: 10px 0px;">Schedule</a></td>
      </tr>
    </div>
    </table>
  </div>
  </header>
  <section class="u-align-left u-clearfix u-section-1" id="sec-b970">
    <div class="u-clearfix u-sheet u-sheet-1">
      <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-container-style u-layout-cell u-size-20 u-layout-cell-1">
              <div class="u-container-layout u-container-layout-1">
                <div class="u-form u-form-1">
                  <form action="${pageContext.request.contextPath}/mainPage" method="POST" class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form" style="padding: 15px;" name="form">
                    <div class="u-align-center u-form-group u-form-submit">
                      <input type="submit" name="addCase" value="Add New Case" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="u-container-style u-layout-cell u-size-20 u-layout-cell-2">
              <div class="u-container-layout u-container-layout-2">
                <div class="u-form u-form-2">
                  <form action="${pageContext.request.contextPath}/mainPage" method="POST" class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form" style="padding: 15px;" name="form">
                    <div class="u-align-center u-form-group u-form-submit">
                      <input type="submit" name="cases" value="Cases" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-2">
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="u-container-style u-layout-cell u-size-20 u-layout-cell-3">
              <div class="u-container-layout u-container-layout-3">
                <div class="u-form u-form-3">
                  <form action="#" method="POST" class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form" style="padding: 15px;" name="form">
                    <div class="u-align-center u-form-group u-form-submit">
                      <input type="submit" name="schedule" value="Not Implemented Yet" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-3">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <footer class="u-align-left u-clearfix u-footer u-grey-80 u-footer" id="sec-52e5"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
      <p class="u-align-center u-text u-text-default u-text-1">CaseLytics<br>
      </p>
  </div></footer>
  </body>
</html>