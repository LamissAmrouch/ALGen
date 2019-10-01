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

        </form>
        <form class="form-inline">

        </form>
        <span class="chooseView">
                            <label class="radio-inline">
                                <a href="/ListRgFaune" class="lien1">  Liste</a>
                            </label>
                            <label class="radio-inline">
                                </i> <a href="/SlideRgFaune"  class="lien1"> SlideShow </a>
                            </label>
                            <label class="radio-inline">
                                 <a href="/ImageRgFaune"  class="lien1">  Grandes images </a>
                            </label>
        </span>
    </nav>

<section id="about" class="commun">

<c:forEach items="${rgs}" var="rg" varStatus="loop">

    <c:if   test="${rg.type == 4}">

        <div id="rgListeElement">

            <img src="../img/<c:out value="${rg.lien_photo}"/>" class="InstitutionImage">
            <div id="InstitutionDetail">
                <h1 id="InstitutionName"> <a href="page-info-faune/<c:out value="${rg.id}"/>"> ${rg.nomscient}  </a> </h1>
                <h1 id="InstitutionName"> <a href="page-info-faune/<c:out value="${rg.id}"/>"> ${rg.nom} </a> </h1>
                <br>
                <p id="InstitutionDiscription">
                        ${rg.description}
                </p>
            </div>
        </div>
    </c:if>
</c:forEach>


    </section>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</div>
</body>


</html>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
