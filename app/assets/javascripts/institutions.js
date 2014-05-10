// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
    $('#add_polititians').autocomplete({
    	source: window.location.protocol + "//" + window.location.host + "/polititians.json",
    	focus: function( event, ui ) {
    		 $('#add_polititians').val(ui.item.label);
    		 return false;
    	},
    	select: function( event, ui ) {
    		 $('#add_polititians').val(ui.item.label);
    		 return false;
    	}
    });
})