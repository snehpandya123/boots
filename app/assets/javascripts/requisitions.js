// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function()
{
	
		var s = $("#copy").val();
		$("#invoice").val(s);
	
});

function Print()
{
var data = document.getElementById("pagecontent").innerHTML;
var printdoc=window.open("","","toolbar=yes,location=no,directories=yes,menubar=yes,scrollbars=yes,width=450, height=400, left=100, top=125");
printdoc.document.open();
printdoc.document.write('<html><head><title>Print table using javascript </title></head>');
printdoc.document.write('<body onLoad="self.print();self.close();" >');
printdoc.document.write(data);
printdoc.document.write('</body></html>');
printdoc.print();//You can call the JavaScript print function .This will automatically open the print dialogue box for the user.
printdoc.document.close();
return false;
}