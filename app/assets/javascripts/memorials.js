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

   var active = $(".active-slide");
   var next = $(".active-slide").prev();
      $(".active-slide").animate({"opacity": ".6"}, 2000);
      setTimeout(function() {
         $(".active-slide").animate({"opacity": "0"}, 1000);
         active.removeClass(".active-slide");
         next.addClass(".active-slide");
      }, 4000);
      setInterval(function() {
         var active = $(".active-slide");
         var next = $(".active-slide").prev();
            if (next.length === 0) {
               next = $(".first-slide");
            }
               $(".active-slide").animate({"opacity": ".6"}, 1000);
                  setTimeout(function() {
                     $(".active-slide").animate({"opacity": "0"}, 1000);
                           active.removeClass(".active-slide");
                           next.addClass(".active-slide");
                  }, 4000);
      }, 5100);




}
$(document).ready(main);
