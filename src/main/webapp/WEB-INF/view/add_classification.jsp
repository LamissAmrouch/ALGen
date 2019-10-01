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
    <jsp:include page="dashbord_header.jsp" flush="true"/>
    <div class="modal-dialog">
        <div class="modal-content">
            <form  method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Ajouter/Modifier une classification</h4>
                </div>

                <div class="modal-body">
                    <div class="form-group">
                        <label for="espece">Espece :</label>
                        <input type="text" id="espece" value="<c:out value='${ classification!=null ? classification.espece : ""}'/>"
                               name="espece" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="genre">Genre :</label>
                        <input type="text" id="genre" value="<c:out value='${ classification!=null ? classification.genre : ""}'/>"
                               name="genre" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="famille">Famille :</label>
                        <input type="text" id="famille" value="<c:out value='${ classification!=null ? classification.famille : ""}'/>"
                               name="famille" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="ordre">Ordre :</label>
                        <input type="text" id="ordre" value="<c:out value='${ classification!=null ? classification.ordre : ""}'/>"
                               name="ordre" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="classe">Classe :</label>
                        <input type="text" id="classe" value="<c:out value='${ classification!=null ? classification.classe : ""}'/>"
                               name="classe" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="embranchement">Embranchement :</label>
                        <input type="text" id="embranchement" value="<c:out value='${ classification!=null ? classification.embranchement : ""}'/>"
                               name="embranchement" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="groupe">Groupe :</label>
                        <input type="text" id="groupe" value="<c:out value='${ classification!=null ? classification.groupe : ""}'/>"
                               name="groupe" class="form-control"/>
                    </div>
                </div>

                <div class="modal-footer">
                    <a href="../classifs" class="btn btn-default">Annuler</a>
                    <button type="submit" class="btn btn-success">Sauvegarder</button>
                </div>

            </form>
        </div></div>
</div>
</body>
</html>

