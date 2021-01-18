<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="CaseLytics">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Cases</title>
    <link rel="stylesheet" href="../../css/nicepage.css" media="screen">
    <link rel="stylesheet" href="../../css/allCases.css" media="screen">
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
                    <td style="padding: 10px"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="${pageContext.request.contextPath}/schedule" style="padding: 10px 0px;">Schedule</a></td>
                </tr>
            </div>
        </table>
    </div>
</header>
<section class="u-align-center u-clearfix u-section-1" id="sec-43b5" style="margin-bottom: 5%">
    <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-form u-form-1">
            <form action="${pageContext.request.contextPath}/allCases" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form"
                  style="padding: 15px" source="custom">
                <div class="u-form-group u-form-name u-form-group-1">
                    <label for="searchbox" class="u-form-control-hidden u-label"></label>
                    <input type="text" placeholder="Search" id="searchbox" name="searchbox"
                           class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
                </div>
                <div class="u-form-group u-form-submit u-form-group-2">
                    <input type="submit" value="Search" name="search" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">
                    <input type="submit" value="Latest" name="latest" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1" style="margin-left: 15px;">
                    <input type="submit" value="Oldest" name="oldest" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1" style="margin-left: 15px;">
                    <input type="submit" value="Short Deadline" name="shortDeadline" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1" style="margin-left: 15px;">
                </div>
            </form>
        </div>
        <div class="u-form u-form-1">
            <div class="u-expanded-width u-expanded-height u-table u-table-responsive u-table-1">
                <table class="u-table-entity">
                    <colgroup>
                        <col width="20%">
                        <col width="20%">
                        <col width="20%">
                        <col width="20%">
                        <col width="20%">
                    </colgroup>
                    <thead class="u-palette-4-base u-table-header u-table-header-1">
                    <tr style="height: 58px;">
                        <th class="u-border-1 u-border-palette-4-light-2 u-palette-4-light-2 u-table-cell u-table-cell-1" style="overflow: hidden"><b>Name</b></th>
                        <th class="u-border-1 u-border-palette-4-light-2 u-palette-4-light-2 u-table-cell u-table-cell-2" style="overflow: hidden"><b>Document</b></th>
                        <th class="u-border-1 u-border-palette-4-light-2 u-palette-4-light-2 u-table-cell u-table-cell-3" style="overflow: hidden"><b>Company</b></th>
                        <th class="u-border-1 u-border-palette-4-light-2 u-palette-4-light-2 u-table-cell u-table-cell-3" style="overflow: hidden"><b>Starting Date</b></th>
                        <th class="u-border-1 u-border-palette-4-light-2 u-palette-4-light-2 u-table-cell u-table-cell-3" style="overflow: hidden"><b>Deadline</b></th>
                    </tr>
                    </thead>
                    <c:forEach var="cases" items="${sessionScope.caseList}">
                    <tbody class="u-table-body">
                        <form action="${pageContext.request.contextPath}/allCases" method="POST"
                            <tr style="height: 48px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-4">
                                    <c:out value="${cases.getOwnName()}"/>
                                </td>
                                <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell">
                                    <c:out value="${cases.getDocID()}"/>
                                </td>
                                <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell">
                                    <c:out value="${cases.getCompany()}"/>
                                </td>
                                <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell" style="width: fit-content">
                                    <c:out value="${cases.getStartDate()}"/>
                                </td>
                                <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell" style="width: fit-content">
                                    <c:out value="${cases.getDeadline()}"/>
                                </td>
                                <td>
                                    <button type="submit" value="${cases.getDbID()}" name="editCase" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">Edit Details</button>
                                </td>
                                <td>
                                    <button type="submit" value="${cases.getDbID()}" name="deleteCase" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">Delete Case</button>
                                </td>
                                <td>
                                    <button type="submit" value="${cases.getDbID()}" name="files" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">Files</button>
                                </td>

                            </tr>
                        </form>
                    </tbody>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</section>

</body>
</html>