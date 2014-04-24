$(document).ready(function(){
 
 $(".po").click(function(e){
     
        localStorage.setItem("visited" + $(this).closest("tr").index(), true);
        $(this).css("color", "red"); // visited
    });

    for(var i = 0, len = $(".po").length; i < len; i++){

        if(localStorage.getItem("visited" + i)){
          
            $(".po:eq(" + i + ")").css("color", "blue"); 
             $(".sneh:eq(" + i + ")").hide(); 
            // visited
        }else
        {
            $(".po:eq(" + i + ")").css("color", "black"); // not visited
        }
    }
});

// for poapp

$(document).ready(function(){
 
 $(".poapp").click(function(e){
     
        localStorage.setItem("visit" + $(this).closest("tr").index(), true);
        $(this).css("color", "red"); // visited
    });

    for(var i = 0, len = $(".poapp").length; i < len; i++){

        if(localStorage.getItem("visit" + i)){
          
            $(".poapp:eq(" + i + ")").css("color", "blue"); 

            $(".poapps:eq(" + i + ")").hide(); 
              
            // visited
        }else
        {
            $(".poapp:eq(" + i + ")").css("color", "black"); // not visited
        }
    }
});

//search 

$(document).ready(function(){
 
 $(".rasset").click(function(e){
     
        localStorage.setItem("receive" + $(this).closest("tr").index(), true);
        $(this).css("color", "red"); // visited
    });

    for(var i = 0, len = $(".rasset").length; i < len; i++){

        if(localStorage.getItem("receive" + i)){
          
            $(".rasset:eq(" + i + ")").css("color", "blue"); 

            $(".reasset:eq(" + i + ")").hide(); 
              
            // visited
        }else
        {
            $(".rasset:eq(" + i + ")").css("color", "blue"); // not visited
        }
    }
});
