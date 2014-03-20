var deleteRow, reload;

deleteRow = function(el) {
  var tr;
  tr = $(el).closest("tr");
  tr.css("background-color", "#FF3700");
  return tr.fadeOut(400, function() {
    tr.remove();
    return false;
  });
};

reload = function(el) {
  location.reload(true);
};
function AutoRefresh( t ) {
	setTimeout("location.reload(true);", t);
}