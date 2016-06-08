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

   $(document).on("click", '.texts-button', function() {
      modalRefresh();
      $('.texts-form').css("display", "block");
   });

   $(document).on("click", '.pictures-button', function() {
      modalRefresh();
      $('.pictures-form').css("display", "block");
   });

}
$(document).ready(main);
