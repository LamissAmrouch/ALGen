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
    <link rel="../stylesheet" href="../webjars/font-awesome/5.8.1/css/fontawesome.min.css"/>
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
            <h4 class="modal-title">Ajouter/Modifier un utilisateur</h4>
        </div>

        <div class="modal-body">
        <div class="form-group">
            <label for="nom">Nom</label>
            <input type="text" id="nom" value="<c:out value='${ user!=null ? user.nom : ""}'/>" name="nom" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="prenom">Prénom</label>
            <input type="text" id="prenom" value="<c:out value='${ user!=null ? user.prenom : ""}'/>"name="prenom" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" class="form-control" value="<c:out value='${ user!=null ? user.email : ""}'/>" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email">
        </div>

        <div class="form-group">
            <label for="password">Mot de passe</label>
            <input type="password" name="mot_de_passe" value="<c:out value='${ user!=null ? user.password : ""}'/>" class="form-control" id="password">
        </div>
        <div class="form-group">
            <label for="fonction">Fonction</label>
            <input type="text" id="fonction" value="<c:out value='${ user!=null ? user.fonction : ""}'/>" name="fonction" class="form-control"/>
        </div>

        <div class="form-group">
                  <label for="sexe">Sexe :</label>
                  <select class="form-control" name="sexe" id="sexe">
                      <c:choose>
                          <c:when test="${genre=='Homme'}">
                              <option value="Homme" selected="selected">Homme</option>
                              <option value="Femme">Femme</option>
                          </c:when>
                          <c:otherwise>
                              <option value="Homme" >Homme</option>
                              <option value="Femme" selected="selected">Femme</option>
                          </c:otherwise>
                      </c:choose>
                  </select>
        </div>

        <div class="form-group">
            <select class="form-control" name="array" multiple="multiple" >
                <option selected>Choisissez vos Roles:</option>
                <c:forEach var="role" items="${rs}">
                    <option value="<c:out value="${role.id}" />">
                        <c:out value="${role.description}" />
                    </option>
                </c:forEach>
            </select>

        </div>


        <div class="form-group">
            <label for="infos">Plus d'information sur vous:</label>
            <textarea rows="5" id="infos" name="info_personnels" class="form-control"><c:out value='${ user!=null ? user.info_personnels : ""}'/></textarea>
        </div>
        </div>


        <div class="modal-footer">
            <a href="../users" class="btn btn-default">Annuler</a>
            <button type="submit" class="btn btn-success">Sauvegarder</button>
        </div>

    </form>
            </div></div>
</div>
</body>
</html>