# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
loading = ->
  $("#submit").on "click", ->
    $this = $(this)
    $this.button "loading"
    setTimeout (->
      $this.button "reset"
      return
    ), 2000
    return

  return

#Execute the slideShow
slideShow = ->
  
  #Set the opacity of all images to 0
  $("#gallery a").css opacity: 0.0
  
  #Get the first image and display it (set it to full opacity)
  $("#gallery a:first").css opacity: 1.0
  
  #Set the caption background to semi-transparent
  $("#gallery .caption").css opacity: 0.7
  
  #Resize the width of the caption according to the image width
  $("#gallery .caption").css width: $("#gallery a").find("img").css("width")
  
  #Get the caption of the first image from REL attribute and display it
  $("#gallery .content").html($("#gallery a:first").find("img").attr("rel")).animate
    opacity: 0.7
  , 400
  
  #Call the gallery function to run the slideshow, 6000 = change to next image after 6 seconds
  setInterval "gallery()", 6000
  return
gallery = ->
  
  #if no IMGs have the show class, grab the first image
  current = ((if $("#gallery a.show") then $("#gallery a.show") else $("#gallery a:first")))
  
  #Get next image, if it reached the end of the slideshow, rotate it back to the first image
  next = ((if (current.next().length) then ((if (current.next().hasClass("caption")) then $("#gallery a:first") else current.next())) else $("#gallery a:first")))
  
  #Get next image caption
  caption = next.find("img").attr("rel")
  
  #Set the fade in effect for the next image, show class has higher z-index
  next.css(opacity: 0.0).addClass("show").animate
    opacity: 1.0
  , 1000
  
  #Hide the current image
  current.animate(
    opacity: 0.0
  , 1000).removeClass "show"
  
  #Set the opacity to 0 and height to 1px
  $("#gallery .caption").animate(
    opacity: 0.0
  ,
    queue: false
    duration: 0
  ).animate
    height: "1px"
  ,
    queue: true
    duration: 300

  
  #Animate the caption, opacity to 0.7 and heigth to 100px, a slide up effect
  $("#gallery .caption").animate(
    opacity: 0.7
  , 100).animate
    height: "100px"
  , 500
  
  #Display the content
  $("#gallery .content").html caption
  return
$(document).ready ->
  loading()
  return

$(document).ready ->
  $("#cancle").click ->
    $("#username").val("").focus()
    $("#password").val ""
    return

  return

$(document).ready ->
  slideShow()
  return

$(document).ready ->
  activeSystemClass = $(".list-group-item.active")
  
  #something is entered in search form
  $("#system-search").keyup ->
    that = this
    
    # affect all table rows on in systems table
    tableBody = $(".table-condensed tbody")
    tableRowsClass = $(".table-condensed tbody tr")
    $(".search-sf").remove()
    tableRowsClass.each (i, val) ->
      
      #Lower text for case insensitive
      rowText = $(val).text().toLowerCase()
      inputText = $(that).val().toLowerCase()
      unless inputText is ""
        $(".search-query-sf").remove()
        tableBody.prepend "<tr class=\"search-query-sf\"><td colspan=\"6\"><strong>Searching for: \"" + $(that).val() + "\"</strong></td></tr>"
      else
        $(".search-query-sf").remove()
      if rowText.indexOf(inputText) is -1
        
        #hide rows
        tableRowsClass.eq(i).hide()
      else
        $(".search-sf").remove()
        tableRowsClass.eq(i).show()
      return

    
    #all tr elements are hidden
    tableBody.append "<tr class=\"search-sf\"><td class=\"text-muted\" colspan=\"6\">No entries found.</td></tr>"  if tableRowsClass.children(":visible").length is 0
    return

  return
