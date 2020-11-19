$(window).on('load',function(){

	$(document).on ("click", ".button", function (event) {
		event.stopPropagation();
        event.preventDefault();
		$(this).parent().hide();

    });

});