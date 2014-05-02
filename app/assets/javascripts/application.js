// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery

//= require jsapi
//= require chartkick
//= require jquery.turbolinks

//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
 

                  

$(document).ready(function()
{
    var navItems = $('.admin-menu li > a');
    var navListItems = $('.admin-menu li');
    var allWells = $('.admin-content');
    var allWellsExceptFirst = $('.admin-content:not(:first)');
    
    allWellsExceptFirst.hide();
    navItems.click(function(e)
    {
        e.preventDefault();
        navListItems.removeClass('active');
        $(this).closest('li').addClass('active');
        
        allWells.hide();
        var target = $(this).attr('data-target-id');
        $('#' + target).show();
    });
});
$(document).ready(function(){
    $('#a1').keyup(calculate);
    $('#a2').keyup(calculate);
});
function calculate(e)
{
    $('#a3').val($('#a1').val() * $('#a2').val());
}


$(document).ready(function(){
    $("#approve").click(function(){
        $("#disapprove").hide();
        $("#action").val("approve");
    });
     $("#disapprove").click(function(){
        $("#approve").hide();
         $("#action").val("disapprove");
    });
     $("#reset").click(function(){
        $("#approve").show();
         $("#disapprove").show();
          $("#action").val("");
    });
});