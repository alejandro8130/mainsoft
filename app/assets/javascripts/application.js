// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui/autocomplete
//= require autocomplete-rails
//= require turbolinks
//= require bootstrap-sprockets
//= require moment
//= require moment/es
//= require bootstrap-datetimepicker
//= require pickers
//= require_tree .



document.addEventListener("turbolinks:load", function() {
    
	$('.datetimepicker').datetimepicker({
	// put here your custom picker options, that should be applied for all pickers
	});
	
});


//Esta funcion sirve para Fijar la barra cuando la pantalla se baje
$(document).ready(function(){
   var altura = $('.FijarBarra').offset().top; 
  $(window).on('scroll', function(){
    if ($(window).scrollTop() > altura){
      $('.FijarBarra').addClass('BarraFijada');
    }else{
      $('.FijarBarra').removeClass('BarraFijada');  
    }
  });
});


//Esta función sirve para fijar el footer

/*
$(document).ready(function(){
  if($("body").height() < $(window).height()){
    $("footer").css({"position":"absolute","bottom":"0px"});
  }
});
*/

/*Funcion para el datapicker de la fecha
$(document).ready(function(){
  $('.datepicker').datepicker();
});
*/

