#= require jquery
#= require jquery_ujs
#= require foundation
#= require tinymce

#= require turbolinks

# add "main" Element to modernizr
window.html5.elements = "main"
window.html5.shivDocument document

$(document).foundation()

$(document).ready ->

  tinyMCE.init
    mode: "textareas",

    theme_advanced_toolbar_location: 'top',
    theme_advanced_toolbar_align: 'left',
    theme_advanced_statusbar_location: 'bottom',
    menubar: false,
    statusbar: false,
    toolbar1: 'undo redo | numlist | link'
    plugins: 'link'
