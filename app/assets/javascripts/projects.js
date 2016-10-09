$(document).ready(function() {
   
   $('.nav-links').localScroll({duration: 500});


   $("#envelope").hover(function(event){
    
     $("#email-label").fadeIn(300);     
   }, function(event){
     $("#email-label").fadeOut(300);
   })
});