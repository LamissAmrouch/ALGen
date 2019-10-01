<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>ALGen</title>
    <script src="../webjars/jquery/3.3.1/jquery.min.js" ></script>
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js" ></script>
    <link href="../webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="../webjars/font-awesome/5.8.1/css/font-awesome.min.css">
    <link href="../css/styleL.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet"/>
</head>
<body>

<div class="cont">

    <jsp:include page="header.jsp" flush="true"></jsp:include>

    <br><br>

    <div class="container">
        <div class="text-left">

            <img src="../img/<c:out value="${institution.image}"/>"  class="img-fluid rounded mx-auto d-block w-40 p-3" alt="ensalogo">
        </div>

        <br>
        <h3 class="text-success">Presentation : </h3>

        <p id="presentation">
            <c:out value="${institution.description}"/>
        </p>

        <br>
        <div id="line1" class="row rounded line align-center">  </div>
        <br>
        <h3 class="text-success">Resources Genetiques : </h3>
        <ul>
            <li> <c:out value="${institution.domaine}"/> </li>

        </ul>

        <br>
        <div class="row rounded line align-center">  </div>
        <br>
        <h3 class="text-success">Contact : </h3>
        <ul>
            <li>Site : <a href="https://<c:out value="${institution.site}"/>/" target="_blank"> <c:out value="${institution.site}"/> </a> </li>
            <li>Adresse : <c:out value="${institution.localisation}"/></li>

        </ul>
        <br>


    </div>


</div>


</body>
</html>