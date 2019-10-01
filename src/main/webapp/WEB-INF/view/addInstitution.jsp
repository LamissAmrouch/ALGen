<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <form:form  method="post" action="/institution"  enctype="multipart/form-data" modelAttribute="institution">

        <div class="modal-header">
            <h4 class="modal-title">Ajouter une institution</h4>
        </div>

        <div class="modal-body">

        <div class="form-group">
            <form:label path="nom" for="nom">Nom</form:label>
            <form:input path="nom" type="text" id="nom" value="" name="nom" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="description" for="description">Description</form:label>
            <form:input path="description" type="text" id="description" value="" name="description" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="typeInstitution">Type d'institution</label>
            <select id="typeInstitution" class="form-control" name="typeInstitution">
                <option value="NONE" disabled selected>Choisir le type de l'institution</option>
                <option value="Publique">Publique</option>
                <option value="Privé">Privé</option>
            </select>
        </div>

        <div class="form-group">
            <form:label path="dateOuverture" for="dateOuverture">Date d'ouverture </form:label>
            <form:input path="dateOuverture" type="date" id="dateOuverture" value="" name="dateOuverture" class="form-control" />
        </div>

        <div class="form-group">
            <select class="form-control" name="domaines" multiple="multiple">
                <option value="none" selected>Choisissez les domaines : </option>
                <c:forEach var="domaine" items="${domaines}">
                    <option value="<c:out value="${domaine.id}" />">
                        <c:out value="${domaine.designation}"/>
                    </option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <form:label path="localisation" for="localisation">Localisation</form:label>
            <form:input path="localisation" type="text" id="localisation" value="" name="localisation" class="form-control" />
        </div>
        <div class="form-group">
            <form:label path="site" for="site">Site</form:label>
            <form:input path="site" type="text" id="site" value="" name="site" class="form-control" />
        </div>
        <div class="form-group">
             <label for="file">Photo :</label>
             <input type="file" id="file" name="file" class="form-control"/>
        </div>
        </div>

        <div class="modal-footer">
            <a href="../institutions" class="btn btn-default">Annuler</a>
            <button type="submit" class="btn btn-success">Sauvegarder</button>
        </div>
    </form:form>
            </div></div>
</div>
</body>
</html>