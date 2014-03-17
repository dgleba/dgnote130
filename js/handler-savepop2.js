
//require <jquery.packed.js>

//Display a message to confirm the user has pressed the same button. Helps Prevent multiple clicks.
jQuery(document).ready(function($){
	$("input[name='--session:save']").click(function(){
				alert("\nGood news: You pressed the Save button!.\n\n\nPress OK to continue and save this record....\n\n\nPlease wait for up to a minute after pressing the OK button in this box to see the 'Success' message.\n");
				//$(this).attr("disabled","disabled");
	});
});
