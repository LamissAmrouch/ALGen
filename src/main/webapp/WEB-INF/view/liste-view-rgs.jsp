<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title> ALGen</title>
<script src="../webjars/jquery/3.3.1/jquery.min.js" ></script>
<script src="../webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js" ></script>
<link href="../webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"/>
<script src="../webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
<link rel="stylesheet" href="../webjars/font-awesome/4.7.0/css/font-awesome.min.css"></link>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>


    <link href="../css/styleD.css" rel="stylesheet"/>
    <link href="../css/style.css" rel="stylesheet"/>



</head>

<body>




<div class="cont">

    <jsp:include page="header.jsp" flush="true"></jsp:include>

    <nav class="navbar navbar-light bg-light">
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Filtrer</button>
        </form>
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
        </form>
        <span class="chooseView">
                            <label class="radio-inline">
                                <input id="liste" class="hide" type="radio" name="(view)" value="list" checked="true"> <i class="fa fa-list-ul"></i> Liste
                            </label>
                            <label class="radio-inline chosen">
                                <input id="slideshow" class="hide" type="radio" name="(view)" value="card"> <i class="fa fa-th"></i> SlideShow
                            </label>
                            <label class="radio-inline">
                                <input id="images" class="hide" type="radio" name="(view)" value="big"> <i class="fa fa-picture-o"></i> Grandes images
                            </label>
        </span>
    </nav>


    <div id="mydivList">
        <c:choose >
            <c:when test="${rg.type==1}">
                <jsp:include page="content-liste-view-rg-forest.jsp" flush="true"></jsp:include>
            </c:when>
            <c:when test="${rg.type==2}">
                <jsp:include page="content-liste-view-rg-alimagricol.jsp" flush="true"></jsp:include>
            </c:when>
            <c:when test="${rg.type==3}">
                <jsp:include page="content-liste-view-rg-marines.jsp" flush="true"></jsp:include>
            </c:when>
            <c:when test="${rg.type==4}">
                <jsp:include page="content-liste-view-rg-faune.jsp" flush="true"></jsp:include>
            </c:when>
            <c:when test="${rg.type==5}">
                <jsp:include page="content-liste-view-rg-micro-org.jsp" flush="true"></jsp:include>
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>
    </div>


</div>
</body>


</html>