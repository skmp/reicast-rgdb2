# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click', '.video-container', (e) ->
    div = $(e.target).closest('.video-container');
    div.replaceWith('<iframe width="480" height="360" src="//www.youtube.com/embed/' + div.attr('data-yid') + '?autoplay=1" frameborder="0" allowfullscreen></iframe>')


$(document).on 'click', '.show-details a', (e) ->
    $(e.target).closest('.game').toggleClass('brief');
    e.preventDefault()
    