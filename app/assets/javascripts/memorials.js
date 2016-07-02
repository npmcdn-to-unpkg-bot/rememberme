var main = function() {

// navbar jQuery =============================================================
   window.onscroll = function() {
  if ($(this).scrollTop() > 0) {
      $(".navbar-memorial").css({"opacity": "1", "position": "fixed"});

    } else {
      $(".navbar-memorial").css({"opacity": "0", "position": "fixed"});

    };
  };


// Post Modals ===============================================================
   modalRefresh = function() {
      $('.pictures-form').css("display", "none");
      $('.texts-form').css("display", "none");
      $('.videos-form').css("display", "none");
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

   $(document).on("hover", ".pictures-button",
   function() {
     $(this).css("font-size", "20px");
   }, function() {
     $(this).css("font-size", "20px");
   });

     $('.pictures-button').hover(
       function() {
         $(this).css("font-size", "20px");
         $(this).css( 'cursor', 'pointer' );

       }, function() {
         $(this).css("font-size", "18px");

     });

     $('.texts-button').hover(
       function() {
         $(this).css("font-size", "20px");
         $(this).css( 'cursor', 'pointer' );

       }, function() {
         $(this).css("font-size", "18px");

     });

     $('.videos-button').hover(
       function() {
         $(this).css("font-size", "20px");
         $(this).css( 'cursor', 'pointer' );

       }, function() {
         $(this).css("font-size", "18px");

     });

} // End jQuery

$(document).ready(main);
