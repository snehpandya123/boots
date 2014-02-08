$(document).load(function(){
var anchAttr = $('.click-ele').find('a');

anchAttr.each(function(){
    alert($(this).attr('href'));
   
});
});
