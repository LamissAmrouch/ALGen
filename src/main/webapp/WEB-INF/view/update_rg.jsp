<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="content-type" />
    <title>ALGen</title>
    <script src="../webjars/jquery/3.3.1/jquery.min.js" ></script>
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js" ></script>
    <link href="../webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="../webjars/font-awesome/5.8.1/css/fontawesome.min.css"/>
    <link href="../css/style.css" rel="stylesheet">
    <script src="../js/script.js"></script>

</head>
<body>
<div class="cont">
    <jsp:include page="dashbord_header.jsp" flush="true"></jsp:include>


<div class="cont">
    <div class="modal-dialog">
        <div class="modal-content">
    <form  method="post">
        <div class="modal-header">
            <h4 class="modal-title">Modifier une ressource génetique</h4>
        </div>

        <div class="modal-body">
        <div class="form-group">
            <label for="nom">Nom</label>
            <input type="text" id="nom" value="<c:out value='${ rg!=null ? rg.nom : ""}'/>" name="nom" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="nomscient">Nom Scientifique :</label>
            <input type="text" id="nomscient" name="nomscient" value="<c:out value='${ rg!=null ? rg.nomscient : ""}'/>" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="zonegeo">Zone géographique:</label>
            <input type="text" id="zonegeo" name="zonegeo" value="<c:out value='${ rg!=null ? rg.zonegeo : ""}'/>" class="form-control"/>
        </div>
           <c:choose >
                <c:when test="${rg.type==1}">
                    <jsp:include page="add_rg_forest.jsp" flush="true"></jsp:include>
                </c:when>
                <c:when test="${rg.type==2}">
                    <jsp:include page="add_rg_alimagricol.jsp" flush="true"></jsp:include>
                </c:when>
                <c:when test="${rg.type==3}">
                    <jsp:include page="add_rg_marine.jsp" flush="true"></jsp:include>
                </c:when>
                <c:when test="${rg.type==4}">
                    <jsp:include page="add_rg_faune.jsp" flush="true"></jsp:include>
                </c:when>
                <c:when test="${rg.type==5}">
                    <jsp:include page="add_rg_micro_org.jsp" flush="true"></jsp:include>
                </c:when>
                <c:otherwise>
                </c:otherwise>
            </c:choose>


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
        </div>


        <div class="modal-footer">
            <a href="../rgs" class="btn btn-default">Annuler</a>
            <button type="submit" class="btn btn-success">Sauvegarder</button>
        </div>

    </form>
        </div></div></div>
</div>
</body>
</html>