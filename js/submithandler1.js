
//require <jquery.packed.js>

//Disable the save button after it's been pressed. (Prevents multiple clicks)
jQuery(document).ready(function($){
	$("input[type='submit']").click(function(){
		//$(this).attr("disabled","disabled");
		alert("Happy birthday, ""!!!");
	});
});



function happyBirthday(name){
    alert("Happy birthday, "+name+"!!!");
}