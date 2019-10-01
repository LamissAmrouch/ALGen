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

<%--Icons--%>
    <link href="webjars/ionicons/2.0.1/css/ionicons.css" rel="stylesheet">


    <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>


    <link href="../css/styleD.css" rel="stylesheet"/>
    <link href="../css/style.css" rel="stylesheet"/>


    <script type="text/javascript">

            $("#slideshow").change(function(){
                $("#mydivList").hide();
                $("#mydivImage").hide();
                $("#mydivSlide").show();

            }) ;

           if( $("#liste:checked") )
           {   $("#mydivList").show();
                $("#mydivImage").hide();
                $("#mydivSlide").hide();

           }

            $("#images").change(function(){
                $("#mydivList").hide();
                $("#mydivImage").show();
                $("#mydivSlide").hide();

            }) ;



    </script>

</head>

<body>

<div class="cont">

    <jsp:include page="header.jsp" flush="true"></jsp:include>

    <nav class="navbar navbar-light bg-light">
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Filter" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Filtrer</button>

        </form>
        <span class="chooseView">
                            <label class="radio-inline">
                                <a href="/ListInstitution" class="lien1">  Liste</a>
                            </label>
                            <label class="radio-inline">
                                </i> <a href="/SlideInstitution"  class="lien1"> SlideShow </a>
                            </label>
                            <label class="radio-inline">
                                 <a href="/ImageInstitution"  class="lien1">  Grandes images </a>
                            </label>
        </span>
    </nav>


    <div id="mydivList">
    <jsp:include page="content-liste-view-institution.jsp" flush="true"></jsp:include>
    </div>


</div>
</body>


</html>