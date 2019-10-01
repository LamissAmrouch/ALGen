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
        <div class="modal-dialog">
        <div class="modal-content">
    <form  method="post">
        <div class="modal-header">
            <h4 class="modal-title">Ajouter/Modifier une procedure traditionnelle</h4>
        </div>

        <div class="modal-body">
        <div class="form-group">
            <label for="nom">Nom :</label>
            <input type="text" id="nom" value="<c:out value='${ proctraditionnel!=null ? proctraditionnel.nom : ""}'/>" name="nom" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="description">Description :</label>
            <textarea rows="5" id="description" name="description" class="form-control"><c:out value='${ proctraditionnel!=null ? proctraditionnel.description : ""}'/></textarea>
        </div>
        <div class="form-group">
            <label for="rg">Ressource génétique:</label>
            <select class="form-control" name="rg" id="rg">
                <c:forEach var="rg" items="${rgs}">
                    <option value="<c:out value="${rg.id}" />">
                        <c:out value="${rg.nom}" />
                    </option>
                </c:forEach>
            </select>
        </div>
        </div>

        <div class="modal-footer">
            <a href="../procs" class="btn btn-default">Annuler</a>
            <button type="submit" class="btn btn-success">Sauvegarder</button>
        </div>

    </form>
        </div></div>
</div>
</body>
</html>

