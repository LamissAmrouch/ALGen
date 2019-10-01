function toggle_rg_type(){
    var rg = $('#type option:selected').val();
    switch (rg){
        case "1":
            $('#form_forest').show();
            $('#form_alimagricol').hide();
            $('#form_marine').hide();
            $('#form_faune').hide();
            $('#form_micro_org').hide();
            break;
        case "2":
            $('#form_forest').hide();
            $('#form_alimagricol').show();
            $('#form_marine').hide();
            $('#form_faune').hide();
            $('#form_micro_org').hide();
            break;
        case "3":
            $('#form_forest').hide();
            $('#form_alimagricol').hide();
            $('#form_marine').show();
            $('#form_faune').hide();
            $('#form_micro_org').hide();
            break;
        case "4":
            $('#form_forest').hide();
            $('#form_alimagricol').hide();
            $('#form_marine').hide();
            $('#form_faune').show();
            $('#form_micro_org').hide();
            break;
        case "5":
            $('#form_forest').hide();
            $('#form_alimagricol').hide();
            $('#form_marine').hide();
            $('#form_faune').hide();
            $('#form_micro_org').show();
            break;
        default:
            $('#form_forest').hide();
            $('#form_alimagricol').hide();
            $('#form_marine').hide();
            $('#form_faune').hide();
            $('#form_micro_org').hide();
    }
}
function toggle_proc_traditionnel(){
    var checked = $('#traditionnel checkbox:checked').val();
    if (checked){
        $('#form_type').show();
    }
    else{
        $('#form_type').hide();
    }
}