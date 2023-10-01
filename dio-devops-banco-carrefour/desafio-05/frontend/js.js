$("#button-blue").on("click", function() {
    var txt_nome = $("#name").val();
    var txt_email = $("#email").val();
    var txt_comentario = $("#comment").val();

    $.ajax({
        url: "http://localhost:8080",
        type: "POST",
        data: {nome: txt_nome, email: txt_email, comentario: txt_comentario},
        beforeSend: function() {
            console.log("Tentando enviar os dados....");
        },
        success: function() {
            console.log("Ok salvo no DB")
        },
        error: function(xhr, textStatus, error){
            console.log(xhr.statusText);
            console.log(textStatus);
            console.log(error);
        }
    })
});