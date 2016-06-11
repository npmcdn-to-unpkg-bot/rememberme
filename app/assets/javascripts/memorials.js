// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var main = function() {
   modalRefresh = function() {
      $('.pictures-form').css("display", "none");
      $('.texts-form').css("display", "none");
      $('.videos-form').css("display", "none");
   };

   window.onscroll = function() {
      $(".navbar-memorial").css({"opacity": "1", "position": "fixed"});
   };



   $(document).on("click", '.pictures-button', function() {
      modalRefresh();
      $('.pictures-form').css("display", "block");
   });

   $(document).on("click", '.texts-button', function() {
      modalRefresh();
      $('.texts-form').css("display", "block");
   });

   $(document).on("click", '.videos-button', function() {
      modalRefresh();
      $('.videos-form').css("display", "block");
   });

   // $('.grid').masonry({
   //   itemSelector: '.grid-item',
   //   columnWidth: 200
   // });
   //
   // var $grid = $('.grid').masonry({
   // });
   //
   // $grid.imagesLoaded().progress( function() {
   //    $grid.masonry('layout');
   // });

}
$(document).ready(main);
