<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>ALGen</title>
    <script src="../webjars/jquery/3.3.1/jquery.min.js" ></script>
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js" ></script>
    <link href="../webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="../webjars/font-awesome/5.8.1/css/font-awesome.min.css">
    <link href="../css/styleL.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
</head>

<body>
<div class="cont">
    <jsp:include page="header.jsp" flush="true"></jsp:include>

    <nav class="navbar navbar-light bg-light">
        <form class="form-inline">

        </form>
        <form class="form-inline">

        </form>
        <span class="chooseView">
                            <label class="radio-inline">
                                <a href="/ListRgAlimagricol" class="lien1">  Liste</a>
                            </label>
                            <label class="radio-inline">
                                </i> <a href="/SlideRgAlimagricol"  class="lien1"> SlideShow </a>
                            </label>
                            <label class="radio-inline">
                                 <a href="/ImageRgAlimagricol"  class="lien1">  Grandes images </a>
                            </label>
        </span>
    </nav>

<div id="div1"  class="card-deck">
<c:forEach items="${rgs}" var="rg" varStatus="loop">
        <c:if test="${loop.index==0}">
            <div class="card">
        <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
        <div class="card-body">
            <h5 class="card-title"><a href="page-info-agro-alimentaire/<c:out value="${rg.id}"/>">  ${rg.nom} </a> </h5>

        </div>
            </div>
        </c:if>

        <c:if test="${loop.index==1}">
            <div class="card">
        <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
        <div class="card-body">
            <h5 class="card-title"><a href="page-info-agro-alimentaire/<c:out value="${rg.id}"/>">  ${rg.nom} </a></h5>
        </div>
            </div>
        </c:if>

        <c:if test="${loop.index==2}">
        <div class="card">
        <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
        <div class="card-body">
            <h5 class="card-title"><a href="page-info-agro-alimentaire/<c:out value="${rg.id}"/>">  ${rg.nom} </a> </h5>

        </div>
        </div>
        </c:if>
</c:forEach>
</div>



<div id="div1" class="card-deck">
    <c:forEach items="${rgs}" var="rg" varStatus="loop">
        <c:if test="${loop.index==3}">
            <div class="card">
                <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                <div class="card-body">
                    <h5 class="card-title"><a href="page-info-agro-alimentaire/<c:out value="${rg.id}"/>">  ${rg.nom} </a> </h5>

                </div>
            </div>
        </c:if>

        <c:if test="${loop.index==4}">
            <div class="card">
                <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                <div class="card-body">
                    <h5 class="card-title"><a href="page-info-agro-alimentaire/<c:out value="${rg.id}"/>">  ${rg.nom} </a></h5>
                </div>
            </div>
        </c:if>

        <c:if test="${loop.index==5}">
            <div class="card">
                <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                <div class="card-body">
                    <h5 class="card-title"><a href="page-info-agro-alimentaire/<c:out value="${rg.id}"/>">  ${rg.nom} </a> </h5>

                </div>
            </div>
        </c:if>
    </c:forEach>
</div>


<div id="div1" class="card-deck">
    <c:forEach items="${rgs}" var="rg" varStatus="loop">
        <c:if test="${loop.index==6}">
            <div class="card">
                <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                <div class="card-body">
                    <h5 class="card-title"><a href="page-info-agro-alimentaire/<c:out value="${rg.id}"/>">  ${rg.nom} </a> </h5>

                </div>
            </div>
        </c:if>

        <c:if test="${loop.index==7}">
            <div class="card">
                <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                <div class="card-body">
                    <h5 class="card-title"><a href="page-info-agro-alimentaire/<c:out value="${rg.id}"/>">  ${rg.nom} </a></h5>
                </div>
            </div>
        </c:if>

        <c:if test="${loop.index==8}">
            <div class="card">
                <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                <div class="card-body">
                    <h5 class="card-title"><a href="page-info-agro-alimentaire/<c:out value="${rg.id}"/>">  ${rg.nom} </a> </h5>

                </div>
            </div>
        </c:if>
    </c:forEach>
</div>

</div>
</body>


</html>