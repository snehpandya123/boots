# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(".newasset").mouseenter ->
    $(".content-wrapper").load "new #assetnew"
    return

  $(".new").mouseenter ->
    $(".content-wrapper").load "help #help"
    return

  $(".click-chart").mouseenter ->
    $(".content-wrapper").load "about #about"
    return

  $(".pending").mouseenter ->
    $(".content-wrapper").load "developer #developer"
    return
  $(".viewasset").mouseenter ->
  	$(".content-wrapper").load "assets #viewasset"
  	return
  $(".click").mouseenter ->
  	$(".content-wrapper").load "emain #eform"
  	return
return