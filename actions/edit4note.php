
<?php

// simple html custom form


class actions_edit4note {
    function handle(&$params) {
    
      // empty. here as a placeholder because Xataface requires it.
    
      }
   }           

 
  $app = & Dataface_Application::getInstance();  // reference to Dataface_Application object
  $auth = & Dataface_AuthenticationTool::getInstance(); // reference to Dataface_Authentication object
  $user = & $auth->getLoggedInUser();  // Dataface_Record object of currently logged in user.
  //global $rrecord;
  $rrecord = & $app->getRecord();  // Currently selected noterecord (Dataface_Record object)
  $query =& $app->getQuery();
  //$url = $app->url('-action=list');
  $url = $app->url('-action=browse');
  //$url = $app->url('');
  //echo $url;
 
 
//http://stackoverflow.com/questions/5826784/php-submit-to-self
if(isset($_POST['submit']))
   {
   //echo $_POST['notef2'];
   //sleep(1);
   //Using setValue() to set a single field value.
   $rrecord->setValue('note_fld', $_POST['notef2']);
   // Commit the changes to the database
   $rrecord->save();
   echo "<br/>Record Submitted <br/><br/>";
   echo "<a href='".$url."'>Go  Back...</a>";
   usleep(2);
   // http://xataface.com/wiki/Selected_Records_Actions  --  Redirect back to the previous page
   //header('Location: '.$url);
   //exit;
   }
else
   {
   include 'actions/edit4note-frm.php';
   }
   


//http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=0&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2883
//http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=edit4note&-cursor=0&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2883
