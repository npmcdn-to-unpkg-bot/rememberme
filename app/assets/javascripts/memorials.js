// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var main = function() {

   modalRefresh = function() {
      $('.texts-form').css("display", "none");
      $('.pictures-form').css("display", "none");
   };

   window.onscroll = function() {
      $(".navbar-memorial").css({"opacity": "1", "position": "fixed"});
   };

   $('.texts-button').click(function() {
      modalRefresh();
      $('.texts-form').css("display", "block");
   });

   $('.pictures-button').click(function() {
      modalRefresh();
      $('.pictures-form').css("display", "block");
   });



}
$(document).ready(main);
