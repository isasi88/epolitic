// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js

$(document).ready(function(){

	$('.pChk').click(function() {
	    if( $(this).is(':checked')) {
	        $(".hide-if-checked").hide();
	    } else {
	        $(".hide-if-checked").show();
	    }
	}); 

});