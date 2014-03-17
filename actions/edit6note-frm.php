
<html>
<head>
<title></title>
</head>

<body>
 
<!-- form to display record from database  and post back to the calling php --> 
<form name="form" method="post" action="index.php" > 
	
  Note: <input type="text" name="notef2" value="<?php echo $rrecord->strval('note_fld'); ?>"/> <br> 
  Tags: <input type="text" name="tagsf2" value="<?php echo $rrecord->strval('tags_fld'); ?>"/> <br> 

   <input type="hidden" name="-action" value="edit6note" />

  <input type="submit" value="Submit" name='submit'/>
</form> 

</body>

</html>
