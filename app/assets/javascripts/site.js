// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
    $('#search_home').autocomplete({
    	source: window.location.protocol + "//" + window.location.host + "/polititians.json",
    	select: function( event, ui ) {
    		 $('#search_home').val(ui.item.label);
             $('#polititian_id').val(ui.item.value);
    		 return false;
    	},
    	focus: function( event, ui ) {
    		 $('#search_home').val(ui.item.label);
    		 return false;
    	}
    });
})