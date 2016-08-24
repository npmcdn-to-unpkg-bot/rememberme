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
   $(document).on("hover", ".pictures-button",
   function() {
     $(this).css("font-size", "20px");
   }, function() {
     $(this).css("font-size", "20px");
   });

} // End jQuery

$(document).ready(main);
