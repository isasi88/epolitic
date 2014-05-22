$(document).ready(function(){
	$('body').tooltip({ container: "body", selector: '[data-toggle=tooltip]' });
	$('body').popover({ trigger: "hover", selector: '[data-toggle=popover]'});
})	