var main = function() {

// navbar jQuery =============================================================
   window.onscroll = function() {
  if ($(this).scrollTop() > 0) {
      $(".navbar-memorial").css({"opacity": "1", "position": "fixed"});

    } else {
      $(".navbar-memorial").css({"opacity": "0", "position": "fixed"});

    };
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

}

$(document).ready(main);
