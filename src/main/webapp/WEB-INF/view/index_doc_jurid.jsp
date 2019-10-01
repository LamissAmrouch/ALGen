<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="content-type" />
    <title>ALGen</title>
    <script src="../webjars/jquery/3.3.1/jquery.min.js" ></script>
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js" ></script>
    <link href="../webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="../webjars/font-awesome/5.8.1/css/fontawesome.min.css"></link>
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body>
<div class="cont">
<jsp:include page="dashbord_header.jsp" flush="true"></jsp:include>
    <div class="modal-dialog">
        <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title">Indexer une loi</h4>
    </div>
            <div class="modal-body">
    <div class="form-group">
            <label>Mot clé:</label>
            <input type="text" name="motCle" class="form-control" placeholder="mot clé" id="motCle">
            <button type="button" class="btn btn-success save-btn" id="saveMotCle" style="width: 100px;">Ajouter</button>
    </div>
    <br/>

    <table class="table table-bordered data-table" id="tabMotsCles">
        <thead>
        <th>Mots clé</th>
        <th width="200px">Action</th>
        </thead>
        <tbody >
        <c:forEach var="mot" items="${motsCles}">
            <tr data-motCle="<c:out value="${mot.motCle}"/>">
                <td>
                    <c:out value="${mot.motCle}"/>
                </td>
                <td style="width: 105px;">
                    <button class='btn btn-info btn-xs btn-edit' style='width: 75px; margin-top: 2px;'>Editer</button>
                    <button class='btn btn-danger btn-xs btn-delete' style='width: 100px;margin-top: 2px;'>Supprimer</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
            </div>
            <div class="modal-footer">
                <a href="../lois" class="btn btn-default">Annuler</a>
                <button type="button" class="btn btn-success" id="sauv_index">Sauvegarder</button>
            </div>
</div>
    </div>
</div>
</body>
</html>


<script type="text/javascript">

    var idDocJuri = '${idDocJuri}';
    console.log(idDocJuri);

    $("body").on("click", "#saveMotCle", function(){
        var motCle = $("#motCle").val();
        $(".data-table tbody").append("<tr data-motCle='"+motCle+"'><td>"+motCle+"</td><td style='width: 105px;'><button class='btn btn-info btn-xs btn-edit' style='width: 75px;margin-top: 2px;'>Editer</button><button class='btn btn-danger btn-xs btn-delete' style='width: 100px;margin-top: 2px;'>Supprimer</button></td></tr>");
        $("#motCle").val('');
    });

    $("body").on("click", ".btn-delete", function(){
        $(this).parents("tr").remove();
    });

    $("body").on("click", ".btn-edit", function(){
        var motCle = $(this).parents("tr").attr('data-motCle');

        $(this).parents("tr").find("td:eq(0)").html('<input name="edit_motCle" value="'+motCle+'">');

        $(this).parents("tr").find("td:eq(1)").prepend("<button class='btn btn-info btn-xs btn-update'  style='width: 75px;margin-top: 0px;'>Update</button><button class='btn btn-warning btn-xs btn-cancel'  style='width: 75px;margin-top: 2px;'>Cancel</button>")
        $(this).hide();
    });

    $("body").on("click", ".btn-cancel", function(){
        var motCle = $(this).parents("tr").attr('data-motCle');

        $(this).parents("tr").find("td:eq(0)").text(motCle);

        $(this).parents("tr").find(".btn-edit").show();
        $(this).parents("tr").find(".btn-update").remove();
        $(this).parents("tr").find(".btn-cancel").remove();
    });

    $("body").on("click", ".btn-update", function(){
        var motCle = $(this).parents("tr").find("input[name='edit_motCle']").val();

        $(this).parents("tr").find("td:eq(0)").text(motCle);

        $(this).parents("tr").attr('data-motCle', motCle);

        $(this).parents("tr").find(".btn-edit").show();
        $(this).parents("tr").find(".btn-cancel").remove();
        $(this).parents("tr").find(".btn-update").remove();
    });

    $("body").on("click", "#sauv_index", function(){
        var motsCles = [];
        var tabMotsCles = $("#tabMotsCles tbody tr");
        for(var i = 0; i <  tabMotsCles.length ; i++){
            motsCles[i] = tabMotsCles.eq(i).find("td").eq(0).text();
        }

        console.log(motsCles);

        $.ajax({
            type : "POST",
            url : "/index_doc_jurid",
            data : {
                motsCles : motsCles,
                id: idDocJuri
            },
            success : function(response) {
                console.log(motsCles);
            },
            error : function(e) {
                alert('Error: ' + e);
            }
        });
    });

</script>
