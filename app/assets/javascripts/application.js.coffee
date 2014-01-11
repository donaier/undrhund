#= require 'kuhsaft/application'
#= require jquery
#= require jquery_ujs
#= require foundation
#= require turbolinks
#= require isotope

# add "main" Element to modernizr
window.html5.elements = "main"
window.html5.shivDocument document

$(document).foundation()

# $('#gun-grid').isotope(
#   animationEngine: 'jquery',
#   layoutMode: 'fitRows',

#   getSortData:
#     category: ($elem) ->
#       $elem.attr('data-category')
# )

# $('.filter-list a').click ->
#   selector = $(this).attr('data-filter')
#   $('#gun-grid').isotope( filter: selector )
#   return false

# $('.sort-list a').click ->
#   selector = $(this).attr('data-sort')
#   $('#gun-grid').isotope( sortBy : selector )
#   return false
