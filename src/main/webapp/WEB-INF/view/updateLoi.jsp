
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <form:form  method="post" action="/updateLoi" modelAttribute="loi" enctype="multipart/form-data">
        <div class="modal-header">
            <h4 class="modal-title">Ajouter une loi</h4>
        </div>


        <div class="modal-body">

        <form:input path="id" type="hidden" />
        <div class="form-group">
            <form:label path="code" for="code">code</form:label>
            <form:input path="code" type="text" id="code" value="" name="code" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="meta" for="meta">méta données</form:label>
            <form:input path="meta" type="text" id="meta" value="" name="meta" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="designation" for="designation">Designation</form:label>
            <form:input path="designation" type="text" id="designation" value="" name="designation" class="form-control" />
        </div>

        <div class="form-group">
            <form:label path="date_sortie" for="date_sortie">Date de sortie </form:label>
            <form:input path="date_sortie" type="date" id="date_sortie" value="" name="date_sortie" class="form-control" />
        </div>
        <div class="form-group">
            <select class="form-control" name="rgs" multiple="multiple">
                <option value="none" selected disabled>Choisissez les rgs : </option>
                <c:forEach var="rg" items="${rgs}">
                    <option
                            value="<c:out value="${rg.id}" />"
                            <c:if test="${loi.rgs.contains(rg)}">SELECTED</c:if>
                    >
                        <c:out value="${rg.nom}"/>
                    </option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <form:label path="chemin_doc" for="chemin_doc">Lien du document</form:label>
            <a href="../<c:out value="${storageFolder}"/>/<c:out value="${loi.chemin_doc}"/>"><c:out value="${ loi.designation}"/></a>
        </div>
        <div class="form-group">
            <label>Recharcher le document de la loi (image/pdf/word)</label>
            <input type="file"  name="file" />
         </div>
        <div class="form-group">
            <form:label path="version" for="version">Version</form:label>
            <form:input path="version" type="text" id="version" value="" name="version" class="form-control" />
        </div>
        <div class="form-group">
            <form:label path="resum" for="resum">Resumé</form:label>
            <form:input path="resum" type="text" id="resum" value="" name="resum" class="form-control" />
        </div>
        <div class="form-group">
            <select class="form-control" name="abroge">
                <option value="true" <c:if test="${loi.abroge}">selected</c:if>>Oui</option>
                <option value="false" <c:if test="${!loi.abroge}">selected</c:if>>Non</option>

            </select>
        </div>
        <div class="form-group">
            <form:label path="modif" for="modif">Modif d'abrogation</form:label>
            <form:input path="modif" type="text" id="modif" value="" name="modif" class="form-control" />
        </div>
            <div class="form-group">
                <label>Index</label>
                <table class="table table-bordered data-table" >
                    <thead>
                    <th>Mots clé</th>
                    </thead>
                    <tbody >
                    <c:forEach var="mot" items="${motsCles}">
                        <tr data-motCle="<c:out value="${mot.motCle}"/>">
                            <td>
                                <c:out value="${mot.motCle}"/>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="modal-footer">
            <a href="../lois" class="btn btn-default">Annuler</a>
            <button type="submit" class="btn btn-success">Sauvegarder</button>
            <a href="../index_doc_jurid/<c:out value="${loi.id}" />" class="btn btn-primary">Indexer</a>
        </div>
    </form:form>
            </div></div>
</div>
</body>
</html>
