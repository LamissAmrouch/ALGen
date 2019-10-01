$("form").submit(function(e){
    e.preventDefault();
    var motCle = $("input[name='motCle']").val();

    $(".data-table tbody").append("<tr data-motCle='"+motCle+"'><td>"+motCle+"</td><td><button class='btn btn-info btn-xs btn-edit'>Edit</button><button class='btn btn-danger btn-xs btn-delete'>Delete</button></td></tr>");

    $("input[name='motCle']").val('');
});

$("body").on("click", ".btn-delete", function(){
    $(this).parents("tr").remove();
});

$("body").on("click", ".btn-edit", function(){
    var motCle = $(this).parents("tr").attr('data-motCle');

    $(this).parents("tr").find("td:eq(0)").html('<input name="edit_motCle" value="'+motCle+'">');

    $(this).parents("tr").find("td:eq(2)").prepend("<button class='btn btn-info btn-xs btn-update'>Update</button><button class='btn btn-warning btn-xs btn-cancel'>Cancel</button>")
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
