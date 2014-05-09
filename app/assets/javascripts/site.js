// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){


 // Below is the name of the textfield that will be autocomplete    
    $('#select_origin').autocomplete({
 // This shows the min length of charcters that must be typed before the autocomplete looks for a match.
            minLength: 2,
 // This is the source of the auocomplete suggestions. In this case a list of names from the people controller, in JSON format.
            source: 'polititians.json',
 // Once a value in the drop down list is selected, do the following:
            select: function(event, ui) {
 // place the person.given_name value into the textfield called 'select_origin'...
                $('#select_origin').val(ui.item.polititian.first_name);
            }
        })

})