//require <jquery.packed.js>
// disable multiple save presses and notify user of save press.

var pressed = 0;
var button_title;

//Disable multiple submit presses
jQuery(document).ready(function(){

	jQuery("form:first").submit(function(){
		//This would be for the case where a user doesn't realize why the form is not submitting, and just keeps trying to press the submit button vainly.
		if(pressed > 2) //Ignore the "double click" but popup error on the third.
			alert("It seems you have tried pressing the " + button_title + " button multiple times. If things don't work properly after you press \"OK\" you most likely did not fill out something correctly. Please correct / modify the form and try saving again. If this problem persists, please contact your system administrator.");

		//If the submit button has been pressed more than once, ignore further attempts.
		if(pressed > 1)
			return false;
	});
	
	//Increment
	jQuery("input[type='submit']").click(function(){
		pressed++;
		//alert("Save Button was pressed..");
		button_title = jQuery(this).attr("value")
	});

	//Reset
	jQuery(":input").change(function(){
		pressed = 0;
	});
	
});
