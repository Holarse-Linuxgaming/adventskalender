$(document).ready(function() {

    $("#btn-toggle-snow").click(function() {
        snowStorm.toggleSnow();
    });

    $("#btn-participate").click(function() {
       window.location = "participate";
    });
  
    $("#btn-games").click(function() {
      window.location = "games";
    });

});