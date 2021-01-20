<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="CaseLytics">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Edit Details</title>
    <link rel="stylesheet" href="../../css/nicepage.css" media="screen">
    <link rel="stylesheet" href="../../css/editCase.css" media="screen">
    <!--<script class="u-script" type="text/javascript" src="../../css/jquery.js" defer=""></script>-->
    <script class="u-script" type="text/javascript" src="../../css/nicepage.js" defer=""></script>
    <link id="u-theme-google-font" rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html"
}
    </script>
    <meta property="og:title" content="Cases">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
</head>
<body class="u-body">
<header class="u-clearfix u-header u-palette-4-light-2 u-sticky u-header" id="sec-f883">
    <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-body-color u-text-default u-text-1"><b>Case</b>Lytics
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
    </div>
</header>
<section class="u-clearfix u-section-1" id="sec-0c4d">
    <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
            <div class="u-layout">
                <div class="u-layout-row">
                    <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
                        <div class="u-container-layout u-container-layout-1">
                            <div class="u-expanded-width u-table u-table-responsive u-table-1">
                                <table class="u-table-entity">
                                    <colgroup>
                                        <col width="50%">
                                        <col width="50%">
                                    </colgroup>
                                    <thead class="u-palette-4-base u-table-header u-table-header-1">
                                    <tr style="height: 48px;">
                                        <th class="u-border-1 u-border-palette-4-light-2 u-palette-4-light-2 u-table-cell u-table-cell-1">Name</th>
                                        <th class="u-border-1 u-border-palette-4-light-2 u-palette-4-light-2 u-table-cell u-table-cell-2">Content</th>
                                    </tr>
                                    </thead>
                                    <tbody class="u-table-body">
                                    <tr style="height: 58px;">
                                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-3">Own Name</td>
                                        <td class="u-border-1 u-border-grey-30 u-table-cell">
                                            <c:out value="${sessionScope.nCase.getOwnName()}"/>
                                        </td>
                                    </tr>
                                    <tr style="height: 58px;">
                                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-5">Document ID</td>
                                        <td class="u-border-1 u-border-grey-30 u-table-cell">
                                            <c:out value="${sessionScope.nCase.getDocID()}"/>
                                        </td>
                                    </tr>
                                    <tr style="height: 58px;">
                                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-7">Company</td>
                                        <td class="u-border-1 u-border-grey-30 u-table-cell">
                                            <c:out value="${sessionScope.nCase.getCompany()}"/>
                                        </td>
                                    </tr>
                                    <tr style="height: 58px;">
                                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-11">Department</td>
                                        <td class="u-border-1 u-border-grey-30 u-table-cell">
                                            <c:out value="${sessionScope.nCase.getDepartment()}"/>
                                        </td>
                                    </tr>
                                    <tr style="height: 58px;">
                                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-9">Case ID</td>
                                        <td class="u-border-1 u-border-grey-30 u-table-cell">
                                            <c:out value="${sessionScope.nCase.getCaseID()}"/>
                                        </td>
                                    </tr>
                                    <tr style="height: 58px;">
                                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-13">Starting Date</td>
                                        <td class="u-border-1 u-border-grey-30 u-table-cell">
                                            <c:out value="${sessionScope.nCase.getStartDate()}"/>
                                        </td>
                                    </tr>
                                    <tr style="height: 58px;">
                                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-15">Deadline</td>
                                        <td class="u-border-1 u-border-grey-30 u-table-cell">
                                            <c:out value="${sessionScope.nCase.getDeadline()}"/>
                                        </td>
                                    </tr>
                                    <tr style="height: 58px;">
                                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-17">Notes</td>
                                        <td class="u-border-1 u-border-grey-30 u-table-cell">
                                            <c:out value="${sessionScope.nCase.getNote()}"/>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                        <div class="u-container-layout u-container-layout-2">
                            <div class="u-form u-form-1">
                                <form action="${pageContext.request.contextPath}/editCase" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" style="padding: 10px" name="form">
                                    <div class="u-form-group u-form-group-1">
                                        <label for="text-b526" class="u-form-control-hidden u-label"></label>
                                        <input type="text" placeholder="Own Name" id="text-b526" name="ownName" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    </div>
                                    <div class="u-form-group u-form-group-2">
                                        <label for="text-55d1" class="u-form-control-hidden u-label"></label>
                                        <input type="text" placeholder="Document ID" id="text-55d1" name="docID" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    </div>
                                    <div class="u-form-group u-form-group-3">
                                        <label for="text-b3c9" class="u-form-control-hidden u-label"></label>
                                        <input type="text" placeholder="Company" id="text-b3c9" name="company" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    </div>
                                    <div class="u-form-group u-form-group-4">
                                        <label for="text-bc8e" class="u-form-control-hidden u-label"></label>
                                        <input type="text" placeholder="Department" id="text-bc8e" name="department" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    </div>
                                    <div class="u-form-group u-form-group-5">
                                        <label for="text-d467" class="u-form-control-hidden u-label"></label>
                                        <input type="text" placeholder="Case ID" id="text-d467" name="caseID" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    </div>
                                    <div class="u-form-date u-form-group u-form-group-6">
                                        <label for="date-aad1" class="u-form-control-hidden u-label">Date</label>
                                        <input type="date" placeholder="MM/DD/YYYY" id="date-aad1" name="startDate" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                    </div>
                                    <div class="u-form-date u-form-group u-form-group-7">
                                        <label for="date-94f0" class="u-form-control-hidden u-label">Date</label>
                                        <input type="date" placeholder="MM/DD/YYYY" id="date-94f0" name="deadline" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                    </div>
                                    <div class="u-form-group u-form-group-8">
                                        <label for="text-e9ab" class="u-form-control-hidden u-label"></label>
                                        <textarea type="text" placeholder="Notes" id="text-e9ab" name="notes" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" style="resize: none; height: 110px"></textarea>
                                    </div>
                                    <div class="u-align-right u-form-group u-form-submit">
                                        <input type="submit" value="Confirm" name="confirm" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">
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


<footer class="u-align-left u-clearfix u-footer u-grey-80 u-footer" id="sec-52e5">
    <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <p class="u-align-center u-text u-text-default u-text-1">CaseLytics<br>
        </p>
    </div>
</footer>
</body>
</html>