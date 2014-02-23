# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document.body).ready ->
  $("#submit").prop("disabled", true).removeClass("btn btn-block btn-lg btn-primary").addClass "btn btn-block btn-lg btn-default"
  $("#reload").prop "disabled", false
  $("#btn_AddToList").click ->
    val = undefined
    val2 = undefined
    val3 = undefined
    val4 = undefined
    $("#reload").prop("disabled", true).removeClass("btn btn-info").addClass "btn btn-default"
    $("#submit").prop("disabled", true).removeClass("btn btn-block btn-lg btn-info").addClass("btn btn-block btn-lg btn-default").html "loading.."
    val = $("#txt_RegionName").val()
    val2 = $("#txt_Region").val()
    val3 = $("#txt_Regio").val()
    val4 = $("#txt_Regi").val()
    $("#lst_Regions").append "<tr><td>" + val + "</td>" + "<td>" + val2 + "</td>" + "<td>" + val3 + "</td>" + "<td>" + val4 + "</td><td><button type=\"button\" class=\"api_key_delete btn btn-small btn-danger\" value=\"31\" onclick=\"deleteRow(this);\"><i class=\"fa fa-trash-o\"></i>  Delete</button></td></tr>"
    $("#txt_RegionName").val("").focus()
    $("#txt_Region").val ""
    $("#txt_Regio").val ""
    $("#txt_Regi").val ""
    $("#btn_AddToList1").click ->
      $("#reload").prop("disabled", false).removeClass("btn btn-default").addClass "btn btn-info"
      $("#submit").prop("disabled", false).removeClass("btn btn-block btn-lg btn-default").addClass "btn btn-block btn-lg btn-info"
      $("body").on "shown.bs.modal", "#myModal", ->
        $(".modal-body").html $("#table-lst-regions").html()
        return

      return

    return

  return

$ ->
  $("#lst_Regions").on "dblclick", "td", ->
    OriginalContent = undefined
    inputNewText = undefined
    OriginalContent = $(this).text()
    inputNewText = prompt("Enter new content for:", OriginalContent)
    $(this).text inputNewText  if inputNewText isnt null
    return

  return
