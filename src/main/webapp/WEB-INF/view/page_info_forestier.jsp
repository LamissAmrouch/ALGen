<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">


<style>


    #rgListeElement {
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: rgba(213, 243, 228, 0.8);
        width: fit-content;
        height: fit-content;
        padding: 0px;
        margin-top: 30px;
        margin-left: 30px;


    }

    #rgDiscription {
        color: black;
        font-family: 'Times New Roman', Times, serif;
        font-size: 1em;
        line-height: 1.6;


    }

    .rgImage {
        min-width: 35em;
        height: 15em;
        object-fit: cover;
    }

    #rgName {
        font-size: 16px;
        color: #18d26e;
        font-weight: bold

    }

    #scientificName {
        font-size: 14px;
        color: rgba(3, 39, 21, 0.8);
    }

    /*******  reg info css ***********/
    #generalInfoDive {
        display: flex;
        padding-top: 32px;
        background-color: white;
        background-color: white;
        width: 100%;
        padding-left: 20px;
    }

    #generalInfoDive2 {
        background-color: white;
        background-color: white;
        width: 100%;
        padding: 20px;
        margin-right: 4%
    }

    .rgInfoImg {
        margin-right: 0px;
        width: 30em;
        height: 30em;
        object-fit: cover;
    }

    #textInfo1 {
        width: 50em;
        padding-right: 8em
    }

    .commun {
        padding: 16px;
    }

    #rgInfoName {
        font-size: 2em;
        color: #18d26e;
        font-weight: 400
    }

    #rgInfoDiscription {
        font-size: 0.8em;
        color: black;
        padding: 2em


    }

    .greenLine {
        size: 16px;
        color: #18d26e;
    }

    .button1 {
        background-color: #4CAF50;
        border: 5px;
        width: 300px;
        border-radius: 16px;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;

    }

    .button1:hover {
        background-color: green;
        color: white;
    }

    .btn-primary, .btn-primary:hover, .btn-primary:active, .btn-primary:visited {
        background-color: white !important;
        border-color: #18d26e !important;
    }
</style>


<head>
    <!-- Required meta tags -->
    <%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title> ALGen</title>
    <script src="../webjars/jquery/3.3.1/jquery.min.js"></script>
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link href="../webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../webjars/font-awesome/4.7.0/css/font-awesome.min.css"></link>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="../css/style.css" rel="stylesheet"/>
    <title>RG info previligie</title>
</head>

<body>
<div class="cont">
    <jsp:include page="header.jsp" flush="true"></jsp:include>


    <section id="generalInfo" class="commun">
        <div id="generalInfoDive">
            <div id="textInfo1">
                <h1 id="rgInfoName"><c:out value="${rg.nom}"/></h1>
                <h1 id="scientificName"><c:out value="${rg.nomscient}"/></h1>
                <p id="rgInfoDiscription">
                    <c:out value="${rg.description}"/>
                </p>
                <hr style="height:3px; background-color: #18d26e;">
                <br>
                <div style="display: flex">
                    <div>
                        <h1 id="rgInfoName">Distribution géeographique </h1>
                        <p id="rgInfoDiscription">
                            <c:out value="${rg.zonegeo}"/>
                        </p>
                    </div>
                    <div style="margin-left: 200px"><img src="../img/map.png" width="50px" height="50px"></div>
                </div>


            </div>

            <figure>
                <img src="../img/<c:out value="${rg.lien_photo}"/>" height="30em" width="3em" class="rgInfoImg">
            </figure>
        </div>
        <!--***************************************************************************************************-->
        <div id="generalInfoDive2">
            <hr style="height:3px; background-color: #18d26e;">
            <br>


            <div>
                <h1 id="rgInfoName">Contituants </h1>
                <p id="rgInfoDiscription">
                    <!-- -->
                </p>
            </div>

            <hr style="height:3px; background-color: #18d26e;">
            <br>

            <div>
                <h1 id="rgInfoName">Utilisation</h1>
                <p id="rgInfoDiscription">
                    <c:out value="${rg_plus.usage}"/>
                </p>
            </div>
            <hr style="height:3px; background-color: #18d26e;">
            <br>

            <div>
                <h1 id="rgInfoName">Parties utilisé</h1>
                <p id="rgInfoDiscription">
                    <c:out value="${rg_plus.parties_utilises}"/>
                </p>
            </div>
            <hr style="height:3px; background-color: #18d26e;">
            <br>


            <div>
                <h1 id="rgInfoName">Classification </h1>
                <br>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Espece</th>
                        <th>Genre</th>
                        <th>Famille</th>
                        <th>Ordre</th>
                        <th>Classe</th>
                        <th>Embranchement</th>
                        <th>Groupe</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><c:out value="${classification.getEspece()}"/></td>
                        <td><c:out value="${classification.getGenre()}"/></td>
                        <td><c:out value="${classification.getFamille()}"/></td>
                        <td><c:out value="${classification.getOrdre()}"/></td>
                        <td><c:out value="${classification.getClasse()}"/></td>
                        <td><c:out value="${classification.getEmbranchement()}"/></td>
                        <td><c:out value="${classification.getGroupe()}"/></td>
                    </tr>

                    </tbody>
                </table>
                <br>
            </div>
            <hr style="height:3px; background-color: #18d26e;">

            <br>

        </div>

    </section>

    <!--**************************  Priviligier  ***************************************-->
    <c:choose>
        <c:when test="${logged}">
            <c:forEach items="${roless}" var="dj_role" varStatus="loop">
                <c:if test="${dj_role.getId() == '11'}">


                    <!--


                    -->

                    <div id="generalInfoDive2">
                        <div>
                            <h1 id="rgInfoName">Procedure traditionnel </h1>
                            <p id="rgInfoDiscription">
                                <c:out value="${proc_traditionnel.description}"/>
                            </p>
                        </div>
                        <hr style="height:3px; background-color: #18d26e;">
                        <br>

                    </div>


                    <section style="display: flex;justify-content: center;flex-direction: column;align-items: center; ">
                        <h1 style="font-weight: 500;font-size:1.8em;padding-bottom: 16px">Voulez vous exploiter cette
                            ressource ?</h1>
                        <button class="button1" onclick="">Cliquer ici</button>
                        <br><br><br><br><br>
                    </section>


                </c:if>
            </c:forEach>


        </c:when>
        <c:otherwise>
            <div style="display: flex;justify-content: center;
        align-items: center;">

                <br>
                <div>
                    <h1 id="rgInfoName">Plus d'information </h1>
                    <br>
                    <a href="/login" style="Color : green;font-size: x-large;padding-left: 50px;padding-bottom: 100px">S'authentifier</a>
                </div>
            </div>
        </c:otherwise>
    </c:choose>

    <!--*********************** fin priviligier  *******************************************************************************-->

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