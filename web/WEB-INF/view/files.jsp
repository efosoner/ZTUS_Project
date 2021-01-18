<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="CaseLytics">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Files</title>
    <link rel="stylesheet" href="../../css/nicepage.css" media="screen">
    <link rel="stylesheet" href="../../css/allFiles.css" media="screen">
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
                <table class="u-table-entity">
                    <colgroup>
                        <col width="50%">
                        <col width="50%">
                    </colgroup>
                    <tbody class="u-table-body">
                    <tr style="height: 45px; width: 100px;">
                        <form action="${pageContext.request.contextPath}/uploadFile" method="POST" enctype="multipart/form-data" class="u-clearfix"
                              style="padding: 15px">
                            <td>
                                <input type="file" name="file" id="files" class="u-active-palette-4-dark-1 u-btn u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1" style="overflow: hidden">
                            </td>
                            <td>
                                <input type="submit" value="Add File" name="addFile" class="u-active-palette-4-dark-1 u-btn u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1" style="height: 51px; width: 190px">
                            </td>
                        </form>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="u-form u-form-1">
                <div class="u-expanded-width u-expanded-height u-table u-table-responsive u-table-1">
                    <table class="u-table-entity">
                        <colgroup>
                            <col width="25%">
                            <col width="75%">
                        </colgroup>
                        <thead class="u-palette-4-base u-table-header u-table-header-1">
                        <tr style="height: 58px;">
                            <th class="u-border-1 u-border-palette-4-light-2 u-palette-4-light-2 u-table-cell u-table-cell-1"><b>Name</b></th>
                            <th class="u-border-1 u-border-palette-4-light-2 u-palette-4-light-2 u-table-cell u-table-cell-2"><b>Path</b></th>
                        </tr>
                        </thead>
                        <c:forEach var="files" items="${sessionScope.fileList}">
                            <tbody class="u-table-body">
                            <form action="${pageContext.request.contextPath}/files" method="POST"
                            <tr style="height: 48px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-4">
                                    <c:out value="${files.getName()}"/>
                                </td>
                                <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell">
                                    <c:out value="${files.getPath()}"/>
                                </td>

                                <td>
                                    <button type="submit" value="${files.getDbID()}" name="downloadFile" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">Download File</button>
                                </td>
                                <td>
                                    <button type="submit" value="${files.getDbID()}" name="deleteFile" class="u-active-palette-4-dark-1 u-btn u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-4-light-2 u-btn-1">Delete File</button>
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