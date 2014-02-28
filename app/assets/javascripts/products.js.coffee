# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/




$ ->
  $("#lst_Regions").on "dblclick", "td", ->
    OriginalContent = undefined
    inputNewText = undefined
    OriginalContent = $(this).text()
    inputNewText = prompt("Enter new content for:", OriginalContent)
    $(this).text inputNewText  if inputNewText isnt null
    return

  return
