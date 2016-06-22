var main = function() {

// navbar jQuery =============================================================
   window.onscroll = function() {
      $(".navbar-memorial").css({"opacity": "1", "position": "fixed"});
   };


// Modal jQuery ===============================================================
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


//Masonry jQuery ==============================================================
   var $grid = $('.grid').masonry({ });

      $grid.masonry({
        itemSelector: '.grid-item',
        columnWidth: '.grid-sizer',
        percentPosition: true
      });

      $grid.imagesLoaded().progress( function() {
         $grid.masonry('layout');
      });

}

$(document).ready(main);
