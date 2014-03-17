
<?php
class actions_edit3note {
    function handle(&$params) {
    
      // empty. here as a placeholder because Xataface requires it.
    
      }
    }           
?>


<html>
<head>
<title></title>
</head>

<body>

  <?php  
    $app = & Dataface_Application::getInstance();  // reference to Dataface_Application object
    $auth = & Dataface_AuthenticationTool::getInstance(); // reference to Dataface_Authentication object
    $user = & $auth->getLoggedInUser();  // Dataface_Record object of currently logged in user.
    global $rrecord;
    $rrecord = & $app->getRecord();  // Currently selected noterecord (Dataface_Record object)
   ?>

<!-- form to display record from database  18 --> 
<form name="form"  action=<?php echo $_SERVER['PHP_SELF'] ?> method="POST" > 
  Note: <input type="text" name="notef2" value="<?php echo $rrecord->strval('note_fld'); ?>"/> <br> 
  Tags: <input type="text" name="tagsf2" value="<?php echo $rrecord->strval('tags_fld'); ?>"/> <br> 
  <input type="submit"  value="submit"> 
</form> 

</body>

</html>

<?php  

//$Name=$_POST['namefield']; 
//$Age=$_POST['agefield']; 

// Using setValue() to set a single field value.
$rrecord->setValue('note_fld', '$_POST['notef2']');
// Commit the changes to the database
$rrecord->save();

?>