// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
    $('#select_origin').autocomplete({
    	source: 'polititians.json',
    	select: function( event, ui ) {
    		 $('#select_origin').val(ui.item.label);
    		 return false;
    	},
    	focus: function( event, ui ) {
    		 $('#select_origin').val(ui.item.label);
    		 return false;
    	}
    });
})