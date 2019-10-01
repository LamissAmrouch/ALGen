
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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




    <link href="../css/styleL.css" rel="stylesheet"/>
    <link href="../css/style.css" rel="stylesheet"/>

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
                                <a href="/ListRgForest" class="lien1">  Liste</a>
                            </label>
                            <label class="radio-inline">
                                </i> <a href="/SlideRgForest"  class="lien1"> SlideShow </a>
                            </label>
                            <label class="radio-inline">
                                 <a href="/ImageRgForest"  class="lien1">  Grandes images </a>
                            </label>
        </span>
    </nav>


    <br> <br> <br> <br>

    <div class="card-deck">

        <div id="carouselExampleSlidesOnly" class="carousel slide card" data-ride="carousel">
            <div class="carousel-inner">

                <c:forEach items="${rgs}" var="rg" varStatus="loop">


                        <c:if test="${loop.index==0}">
                            <div class="carousel-item active" data-interval="4000">
                                <div class="card">
                                    <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                                    <div class="card-body">
                                        <h5 class="card-title"></h5>
                                        <p class="card-text"> <a href="page-info-forest/<c:out value="${rg.id}"/>">  ${rg.nom} </a></p>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${loop.index!=0 and loop.index < 3}">
                            <div class="carousel-item" data-interval="4000">
                                <div class="card">
                                    <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                                    <div class="card-body">
                                        <h5 class="card-title"></h5>
                                        <p class="card-text"> <a href="page-info-forest/<c:out value="${rg.id}"/>">  ${rg.nom} </a></p>
                                    </div>
                                </div>
                            </div>
                        </c:if>


                </c:forEach>


            </div>
        </div>

        <div id="carouselExampleSlidesOnly2" class="carousel slide card" data-ride="carousel">
            <div class="carousel-inner">
                <c:forEach items="${rgs}" var="rg" varStatus="loop">

                        <c:if test="${loop.index==3}">
                            <div class="carousel-item active" data-interval="4000">
                                <div class="card">
                                    <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                                    <div class="card-body">
                                        <h5 class="card-title"></h5>
                                        <p class="card-text"> <a href="page-info-forest/<c:out value="${rg.id}"/>">  ${rg.nom} </a></p>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${loop.index >3 and loop.index < 6}">
                            <div class="carousel-item" data-interval="4000">
                                <div class="card">
                                    <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                                    <div class="card-body">
                                        <h5 class="card-title"></h5>
                                        <p class="card-text"> <a href="page-info-forest/<c:out value="${rg.id}"/>">  ${rg.nom} </a></p>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                </c:forEach>
            </div>
        </div>

        <div id="carouselExampleSlidesOnly3" class="carousel slide card" data-ride="carousel">
            <div class="carousel-inner">

                <c:forEach items="${rgs}" var="rg" varStatus="loop">

                        <c:if test="${loop.index==6}">
                            <div class="carousel-item active" data-interval="4000">
                                <div class="card">
                                    <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                                    <div class="card-body">
                                        <h5 class="card-title"></h5>
                                        <p class="card-text"> <a href="page-info-forest/<c:out value="${rg.id}"/>">  ${rg.nom} </a></p>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${loop.index > 6 and loop.index < 9}">
                            <div class="carousel-item" data-interval="4000">
                                <div class="card">
                                    <img src="../img/<c:out value="${rg.lien_photo}"/>" class="card-img-top" >
                                    <div class="card-body">
                                        <h5 class="card-title"></h5>
                                        <p class="card-text"> <a href="page-info-forest/<c:out value="${rg.id}"/>">  ${rg.nom} </a></p>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                </c:forEach>
            </div>
        </div>
    </div>






</div>
</body>


</html>
