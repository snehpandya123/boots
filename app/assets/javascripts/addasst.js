// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(window).load(function(){

  $(".pos").click(function(e){
     debugger;
        localStorage.setItem("visited" + $(this).closest("tr").index(), true);
        $(this).css("color", "red"); // visited
    });

    for(var i = 0, len = $(".pos").length; i < len; i++){

        if(localStorage.getItem("visited" + i)){
            
            $(".pos:eq(" + i + ")").css("color", "white"); // visited
        }else
        {
            $(".pos:eq(" + i + ")").css("color", "black"); // not visited
        }
    }
});