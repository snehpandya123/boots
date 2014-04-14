$(document).ready(function(){
 
 $(".po").click(function(e){
     
        localStorage.setItem("visited" + $(this).closest("tr").index(), true);
        $(this).css("color", "red"); // visited
    });

    for(var i = 0, len = $(".po").length; i < len; i++){

        if(localStorage.getItem("visited" + i)){
            
            $(".po:eq(" + i + ")").css("color", "blue"); // visited
        }else
        {
            $(".po:eq(" + i + ")").css("color", "black"); // not visited
        }
    }
});