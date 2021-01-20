<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="CaseLytics">
    <meta name="description" content="CaseLytics">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>AddCase</title>
    <link rel="stylesheet" href="../../css/nicepage.css" media="screen">
    <link rel="stylesheet" href="../../css/addCase.css" media="screen">
    <!--<script class="u-script" type="text/javascript" src="../../css/jquery.js" defer=""></script>-->
    <script class="u-script" type="text/javascript" src="../../css/nicepage.js" defer=""></script>
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html"
}</script>
    <link rel="canonical" href="index.html">
</head>
<body class="u-body"><header class="u-clearfix u-header u-palette-4-light-2 u-sticky u-header" id="sec-f883"><div class="u-clearfix u-sheet u-sheet-1">
    <h2 class="u-text u-text-body-color u-text-default u-text-1"><b style="">Case</b>Lytics
    </h2>
    <table style="margin-left: 25px">
        <div>
            <tr>
                <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/logout" style="padding: 10px 0px;">LogOut</a></td>
                <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/mainPage" style="padding: 10px 0px;">MainPage</a></td>
                <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/addCase" style="padding: 10px 0px;">AddCase</a></td>
                <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/allCases" style="padding: 10px 0px;">Cases</a></td>
                <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/schedule" style="padding: 10px 0px;">Not Implemented Yet</a></td>
            </tr>
        </div>
    </table>
</div></header>
<section class="u-clearfix u-section-1" id="sec-0c4d">
    <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-form u-form-1">
            <form action="${pageContext.request.contextPath}/addCase" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" style="padding: 10px" name="form">
                <div class="u-form-group u-form-group-1">
                    <label for="ownName" class="u-form-control-hidden u-label"></label>
                    <input type="text" placeholder="Own Name" id="ownName" name="ownName" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                </div>
                <div class="u-form-group u-form-group-2">
                    <label for="docID" class="u-form-control-hidden u-label"></label>
                    <input type="text" placeholder="Document ID" id="docID" name="docID" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                </div>
                <div class="u-form-group u-form-group-3">
                    <label for="company" class="u-form-control-hidden u-label"></label>
                    <input type="text" placeholder="Company" id="company" name="company" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                </div>
                <div class="u-form-group u-form-group-4">
                    <label for="department" class="u-form-control-hidden u-label"></label>
                    <input type="text" placeholder="Department" id="department" name="department" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                </div>
                <div class="u-form-group u-form-group-5">
                    <label for="caseID" class="u-form-control-hidden u-label"></label>
                    <input type="text" placeholder="Case ID" id="caseID" name="caseID" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                </div>
                <div class="u-form-date u-form-group u-form-group-6">
                    <label for="startDate" class="u-form-control-hidden u-label">Date</label>
                    <input type="date" placeholder="MM/DD/YYYY" id="startDate" name="startDate" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                </div>
                <div class="u-form-date u-form-group u-form-group-7">
                    <label for="deadline" class="u-form-control-hidden u-label">Date</label>
                    <input type="date" placeholder="MM/DD/YYYY" id="deadline" name="deadline" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                </div>
                <div class="u-form-group u-form-group-8">
                    <label for="caseNotes" class="u-form-control-hidden u-label"></label>
                    <textarea type="text" placeholder="Notes" id="caseNotes" name="notes" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" style="resize: none; height: 200px"></textarea>
                </div>
                <div class="u-align-left u-form-group u-form-submit">
                    <input type="submit" value="Confirm" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">
                </div>
            </form>
        </div>
    </div>
</section>

<footer class="u-align-left u-clearfix u-footer u-grey-80 u-footer" id="sec-52e5"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
    <p class="u-align-center u-text u-text-default u-text-1">CaseLytics<br>
    </p>
</div></footer>
</body>
</html>