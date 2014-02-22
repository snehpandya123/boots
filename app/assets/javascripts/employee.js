$(document.body).ready(function () {
        $('#submit').prop('disabled', true).removeClass("btn btn-block btn-lg btn-primary").addClass("btn btn-block btn-lg btn-default");
        $('#reload').prop('disabled', false)
        $('#btn_AddToList').click(function () {
        $('#reload').prop('disabled', true).removeClass("btn btn-info").addClass("btn btn-default");
        $('#submit').prop('disabled', true).removeClass("btn btn-block btn-lg btn-info").addClass("btn btn-block btn-lg btn-default").html("loading..");
          var val = $('#txt_RegionName').val();
          var val2 = $('#txt_Region').val();
          var val3 = $('#txt_Regio').val();
          var val4 = $('#txt_Regi').val();
        $('#lst_Regions').append('<tr><td>' + val + '</td>' + '<td>' + val2 + '</td>' + '<td>' + val3 + '</td>' + '<td>'
         + val4 + '</td><td><button type="button" class="api_key_delete btn btn-small btn-danger" value="31" onclick="deleteRow(this);"><i class="fa fa-trash-o"></i>  Delete</button></td></tr>');
        $('#txt_RegionName').val('').focus();
        $('#txt_Region').val('');
        $('#txt_Regio').val('');
        $('#txt_Regi').val('');
        $('#btn_AddToList1').click(function () {
        $('#reload').prop('disabled', false).removeClass("btn btn-default").addClass("btn btn-info");
        $('#submit').prop('disabled', false).removeClass("btn btn-block btn-lg btn-default").addClass('btn btn-block btn-lg btn-info');
        $('body').on('shown.bs.modal', '#myModal', function () {
        $(".modal-body").html($("#table-lst-regions").html());

        
           });
        });
        });
});
   

function deleteRow(el) {
        var tr = $(el).closest('tr');
        tr.css("background-color","#FF3700");
        tr.fadeOut(400, function(){
        tr.remove();
          });
           return false;
}

function reload(el){

    location.reload(true);
}

$(function () {
    $("#lst_Regions").on( 'dblclick', 'td', function () {
        var OriginalContent = $(this).text();
        var inputNewText = prompt("Enter new content for:", OriginalContent);
            if (inputNewText != null) {     
                $(this).text(inputNewText)
            }
    });
});



$(document).ready(function(){
  $(".click").onclick(function(){
    $(".content-wrapper").load("help");
  });
});
$(document).ready(function(){
   $(".new").onclick(function(){
    $(".content-wrapper").load("emain");
  });
 });
$(document).ready(function(){
    $(".click-chart").onclick(function(){
    $(".content-wrapper").load("about");
  });
  });
$(document).ready(function(){
     $(".pending").onclick(function(){
    $(".content-wrapper").load("developer");
  });
  
});

 
 

  