<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="content-type" />
    <title>ALGen</title>
    <script src="webjars/jquery/3.3.1/jquery.min.js" ></script>
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js" ></script>
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="webjars/font-awesome/5.8.1/css/fontawesome.min.css"/>
    <link href="css/style.css" rel="stylesheet">
    <script src="js/script.js"></script>

</head>
<body>
<div class="cont">
    <jsp:include page="dashbord_header.jsp" flush="true"></jsp:include>
        <div class="modal-dialog">
        <div class="modal-content">
    <form  method="post" enctype="multipart/form-data" >

        <div class="modal-header">
            <h4 class="modal-title">Ajouter une ressource génetique</h4>
        </div>


        <div class="modal-body">

        <div class="form-group">
            <label for="nom">Nom</label>
            <input type="text" id="nom" value="<c:out value='${ rg!=null ? rg.nom : ""}'/>" name="nom" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="nomscient">Nom Scientifique :</label>
            <input type="text" id="nomscient" name="nomscient" class="form-control"/>
        </div>
            <div class="form-group">
                <label for="file">Photo :</label>
                <input type="file" id="file" name="file" class="form-control"/>
            </div>

        <div class="form-group">
            <label for="zonegeo">Zone géographique:</label>
            <input type="text" id="zonegeo" name="zonegeo" value="<c:out value='${ rg!=null ? rg.zonegeo : ""}'/>" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="type">Type :</label>
            <select onchange="toggle_rg_type()" class="form-control" name="type" id="type">
                <option value="1" selected="selected">Ressource Forestiere, Aromatique et Médicinale</option>
                <option value="2">Ressource Alimentaire et agricole</option>
                <option value="3">Ressource Marine</option>
                <option value="4">Ressource de la Faune</option>
                <option value="5">Ressource Microorganique</option>
            </select>
        </div>


        <div id="form_forest" style="display: none">
            <jsp:include page="add_rg_forest.jsp" flush="true"></jsp:include>
        </div>
        <div id="form_alimagricol" style="display: none">
            <jsp:include page="add_rg_alimagricol.jsp" flush="true"></jsp:include>
        </div>
        <div id="form_marine" style="display: none">
            <jsp:include page="add_rg_marine.jsp" flush="true"></jsp:include>
        </div>
        <div id="form_faune" style="display: none">
            <jsp:include page="add_rg_faune.jsp" flush="true"></jsp:include>
        </div>
        <div id="form_micro_org" style="display: none">
            <jsp:include page="add_rg_micro_org.jsp" flush="true"></jsp:include>
        </div>

        <div class="form-group">
            <label for="description">Description:</label>
            <textarea rows="5" id="description" name="description" class="form-control"><c:out value='${ rg!=null ? rg.description : ""}'/></textarea>
        </div>
        <div class="form-group">
            <label for="biotope">Biotope:</label>
            <textarea rows="5" id="biotope" name="biotope" class="form-control"><c:out value='${ rg!=null ? rg.biotope : ""}'/></textarea>
        </div>
        <div class="form-group">
            <label for="aliment">Alimentation:</label>
            <textarea rows="5" id="aliment" name="aliment" class="form-control"><c:out value='${ rg!=null ? rg.aliment : ""}'/></textarea>
        </div>
        <div class="form-group">
            <label for="reproduction">Reproduction:</label>
            <textarea rows="5" id="reproduction" name="reproduction" class="form-control"><c:out value='${ rg!=null ? rg.reproduction : ""}'/></textarea>
        </div>

        <div class="form-group">
            <label for="cle_identification">Clé d'identification:</label>
            <textarea rows="5" id="cle_identification" name="cle_identification" class="form-control"><c:out value='${ rg!=null ? rg.cle_identification : ""}'/></textarea>
        </div>
            <div class="form-group">
                <select class="form-control" name="classif">
                    <option selected>Classification:</option>
                    <c:forEach var="classif" items="${classifications}">
                        <option value="<c:out value="${classif.id}" />">
                            <c:out value="${classif.espece}" />
                            ->  <c:out value="${classif.genre}" />
                            ->  <c:out value="${classif.famille}" />
                            ->  <c:out value="${classif.ordre}" />
                            ->  <c:out value="${classif.classe}" />
                            ->  <c:out value="${classif.embranchement}" />
                            ->  <c:out value="${classif.groupe}" />
                        </option>
                    </c:forEach>
                </select>

            </div>
        </div>



        <div class="modal-footer">
            <a href="../rgs" class="btn btn-default">Annuler</a>
            <button type="submit" class="btn btn-success">Sauvegarder</button>
        </div>

    </form>
        </div>
        </div>
</div>
</body>
</html>