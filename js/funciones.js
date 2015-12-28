$(document).ready(function () {
    var emailreg = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
    $("#boton").click(function (){
        $(".error").remove();
        if( $("#inputEmail").val() == "" || !emailreg.test($("#inputEmail").val()) ){
            $("#inputEmail").focus().after("<span class='error'>Ingrese un email correcto</span>");
            return false;
        }
        
        if( $("#inputPassword").val() == "" ){
            $("#inputPassword").focus().after("<span class='error'>Ingrese una password correcta</span>");
            return false;
        }
        
        
        
    });
   
    $("#inputEmail").keyup(function(){
        if( $(this).val() != "" && emailreg.test($(this).val())){
            $(".error").fadeOut();
            return false;
        }
    });
});