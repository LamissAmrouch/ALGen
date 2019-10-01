<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="js/script.js"></script>
    <style type="text/css">
        body {
            color: #566787;
            background: #f5f5f5;
            font-family: 'Varela Round', sans-serif;
            font-size: 13px;
        }
        .table-wrapper {
            background: #fff;
            padding: 20px 25px;
            margin: 30px 0;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0,0,0,.05);
        }
        .table-title {
            padding-bottom: 15px;
            background: #435d7d;
            color: #fff;
            padding: 16px 30px;
            margin: -20px -25px 10px;
            border-radius: 3px 3px 0 0;
        }
        .table-title h2 {
            margin: 5px 0 0;
            font-size: 24px;
        }
        .table-title .btn-group {
            float: right;
        }
        .table-title .btn {
            color: #fff;
            float: right;
            font-size: 13px;
            border: none;
            min-width: 50px;
            border-radius: 2px;
            border: none;
            outline: none !important;
            margin-left: 10px;
        }
        .table-title .btn i {
            float: left;
            font-size: 21px;
            margin-right: 5px;
        }
        .table-title .btn span {
            float: left;
            margin-top: 2px;
        }
        table.table tr th, table.table tr td {
            border-color: #e9e9e9;
            padding: 12px 15px;
            vertical-align: middle;
        }
        table.table tr th:first-child {
            width: 60px;
        }
        table.table tr th:last-child {
            width: 100px;
        }
        table.table-striped tbody tr:nth-of-type(odd) {
            background-color: #fcfcfc;
        }
        table.table-striped.table-hover tbody tr:hover {
            background: #f5f5f5;
        }
        table.table th i {
            font-size: 13px;
            margin: 0 5px;
            cursor: pointer;
        }
        table.table td:last-child i {
            opacity: 0.9;
            font-size: 22px;
            margin: 0 5px;
        }
        table.table td a {
            font-weight: bold;
            color: #566787;
            display: inline-block;
            text-decoration: none;
            outline: none !important;
        }
        table.table td a:hover {
            color: #2196F3;
        }
        table.table td a.edit {
            color: #FFC107;
        }
        table.table td a.delete {
            color: #F44336;
        }
        table.table td i {
            font-size: 19px;
        }
        table.table .avatar {
            border-radius: 50%;
            vertical-align: middle;
            margin-right: 10px;
        }
        .pagination {
            float: right;
            margin: 0 0 5px;
        }
        .pagination li a {
            border: none;
            font-size: 13px;
            min-width: 30px;
            min-height: 30px;
            color: #999;
            margin: 0 2px;
            line-height: 30px;
            border-radius: 2px !important;
            text-align: center;
            padding: 0 6px;
        }
        .pagination li a:hover {
            color: #666;
        }
        .pagination li.active a, .pagination li.active a.page-link {
            background: #03A9F4;
        }
        .pagination li.active a:hover {
            background: #0397d6;
        }
        .pagination li.disabled i {
            color: #ccc;
        }
        .pagination li i {
            font-size: 16px;
            padding-top: 6px
        }
        .hint-text {
            float: left;
            margin-top: 10px;
            font-size: 13px;
        }
        /* Custom checkbox */
        .custom-checkbox {
            position: relative;
        }
        .custom-checkbox input[type="checkbox"] {
            opacity: 0;
            position: absolute;
            margin: 5px 0 0 3px;
            z-index: 9;
        }
        .custom-checkbox label:before{
            width: 18px;
            height: 18px;
        }
        .custom-checkbox label:before {
            content: '';
            margin-right: 10px;
            display: inline-block;
            vertical-align: text-top;
            background: white;
            border: 1px solid #bbb;
            border-radius: 2px;
            box-sizing: border-box;
            z-index: 2;
        }
        .custom-checkbox input[type="checkbox"]:checked + label:after {
            content: '';
            position: absolute;
            left: 6px;
            top: 3px;
            width: 6px;
            height: 11px;
            border: solid #000;
            border-width: 0 3px 3px 0;
            transform: inherit;
            z-index: 3;
            transform: rotateZ(45deg);
        }
        .custom-checkbox input[type="checkbox"]:checked + label:before {
            border-color: #03A9F4;
            background: #03A9F4;
        }
        .custom-checkbox input[type="checkbox"]:checked + label:after {
            border-color: #fff;
        }
        .custom-checkbox input[type="checkbox"]:disabled + label:before {
            color: #b8b8b8;
            cursor: auto;
            box-shadow: none;
            background: #ddd;
        }
        /* Modal styles */
        .modal .modal-dialog {
            max-width: 400px;
        }
        .modal .modal-header, .modal .modal-body, .modal .modal-footer {
            padding: 20px 30px;
        }
        .modal .modal-content {
            border-radius: 3px;
        }
        .modal .modal-footer {
            background: #ecf0f1;
            border-radius: 0 0 3px 3px;
        }
        .modal .modal-title {
            display: inline-block;
        }
        .modal .form-control {
            border-radius: 2px;
            box-shadow: none;
            border-color: #dddddd;
        }
        .modal textarea.form-control {
            resize: vertical;
        }
        .modal .btn {
            border-radius: 2px;
            min-width: 100px;
        }
        .modal form label {
            font-weight: normal;
        }
    </style>
</head>

<body>
<div class="cont">
    <jsp:include page="dashbord_header.jsp" flush="true"></jsp:include>

    <!-- content -->
        <div class="container">
            <div class="table-wrapper" style="width: min-content; margin-left: -11%;">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-10">
                            <h2>Gestion des <b>Lois</b></h2>
                        </div>
                        <div class="col-sm-2">
                            <a href="../loi" class="btn btn-success" ><i class="material-icons">&#xE147;</i> <span>Ajouter</span></a>
                        </div>
                    </div>
                </div>

                <form method="post" action="/search_lois" class="modal-footer">
                    <input type="text" name="searchText" class="form-control" required="" placeholder="tapez votre recherche ici ...">
                    <select class="form-control" name="searchType">
                        <option value="0">
                            Mot clé
                        </option>
                        <option value="1">
                            Texte intégral
                        </option>
                        <option value="2">
                            Nom de ressource
                        </option>
                    </select>
                    <button type="submit" class="btn btn-primary" style="margin-top: 0px; width: 100px;">search</button>
                </form>

                <form method="post" action="/filter_by_date" class="modal-footer">
                    <label>Début</label>
                    <input type="date" name="dateDebut" class="form-control" required="">
                    <label>Fin</label>
                    <input type="date" name="dateFin" class="form-control" required="" >
                    <button type="submit" class="btn btn-primary" style="margin-top: 0px; width: 100px;">filtrer</button>
                </form>
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th>Code</th>
            <th>Date de Sortie</th>
            <th>Version</th>
            <th>Designation</th>
            <th>Lien du document</th>
            <th>Ressource Génétique</th>
            <th>Résumé</th>
            <th>Abroger</th>
            <th>Motif d'Abrogation</th>
            <th>Action</th>

        </tr>
        </thead>

        <tbody>
        <c:forEach items="${ lois }" var="loi" varStatus="status">
            <tr>
                <td scope="row"><c:out value="${ loi.code}"/></td>
                <td><c:out value="${ loi.date_sortie}"/></td>
                <td><c:out value="${ loi.version}"/></td>
                <td><c:out value="${ loi.designation}"/></td>
                <td><a href="<c:out value="${storageFolder}"/>/<c:out value="${loi.chemin_doc}"/>"><c:out value="${ loi.code}"/></a> </td>
                <td><c:forEach items="${ loi.rgs}" var="rg">
                    <c:out value="${ rg.nom}"/><br/>
                </c:forEach>
                </td>
                <td><c:out value="${ loi.resum}"/></td>
                <td><c:out value="${ loi.abroge}"/></td>
                <td><c:out value="${ loi.modif}"/></td>
                <td>
                    <a href="<c:url value="/updateLoi/${loi.id}" />" class="edit" ><i class="material-icons" title="Modifier">&#xE254;</i></a>
                    <a href="<c:url value="/deleteLoi/${loi.id}" />" class="delete"><i class="material-icons" title="Supprimer">&#xE872;</i></a>
                    <a href="<c:url value="/index_doc_jurid/${loi.id}"/>"><i class="material-icons" title="Indexer">&#xE872;</i></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
            </div></div>
</div>
</body>
</html>