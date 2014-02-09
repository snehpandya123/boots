$(document).ready(function() {     
    $('#submit').prop('disabled', true).removeClass("btn btn-block btn-lg btn-primary").addClass("btn btn-block btn-lg btn-default");
    
     $('#btn_AddToList').click(function () {
     
     $('#submit').prop('disabled', true).removeClass("btn btn-block btn-lg btn-info").addClass("btn btn-block btn-lg btn-default");
    var val = $('#txt_RegionName').val();
    var val2 = $('#txt_Region').val();
    var val3 = $('#txt_Regio').val();
    var val4 = $('#txt_Regi').val();
    $('#lst_Regions').append('<tr><td>' + val + '</td>' + '<td>' + val2 + '</td>' + '<td>' + val3 + '</td>' + '<td>' + val4 + '</td></tr>');
    $('#txt_RegionName').val('').focus();
    $('#txt_Region').val('');
        $('#txt_Regio').val('');
        $('#txt_Regi').val('');
    $('#btn_AddToList1').click(function () {
         $('#submit').prop('disabled', false).removeClass("btn btn-block btn-lg btn-default").addClass('btn btn-block btn-lg btn-info');
   $('body').on('shown.bs.modal', '#myModal', function () {
   $(".modal-body").html($("#table-lst-regions").html());
       });
      });
    });
});
