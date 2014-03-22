<?php


//report all errors for debugging...
//error_reporting(E_ALL);
//ini_set('display_errors', 'on');
//don't show strict warnings.  xataface group.. Re: Getting messages: Strict Standards: Only variables should be assigned by reference errors
ini_set('display_errors', '0');     # don't show any errors...
error_reporting(E_ALL | E_STRICT);  # ...but do log them


//Main Application access point
//require_once "..//xataface//dataface-public-api.php";
//require_once "../xataface204461/dataface-public-api.php";
//require_once "C:\\p2\\xampp\\htdocs\\xataface204461\\dataface-public-api.php"; 
//require_once "C:\\p2\\xampp\\htdocs\\xataface\\dataface-public-api.php";

//Main Application access point
if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
    //echo 'This is a server using Windows!';
    require_once "C:\\p2\\xampp\\htdocs\\xataface\\dataface-public-api.php";
} else {
    echo 'This is a server not using Windows!';
    require_once "../xataface/dataface-public-api.php";
}


/*
  //set default sort order. needed to add this for 1.5x. the applicationdelegate.php stanza was not working for ver 1.5x.
  // Problem is it only works after you click on a top menu [table] item.
  if ( !isset($_REQUEST['-sort']) and @$_REQUEST['-table'] == 'vw_nte_note' ){
  $_REQUEST['-sort'] = $_GET['-sort'] = 'createdtime desc';
  }
*/

  //set default sort order. needed to add this for 1.5x. the applicationdelegate.php stanza was not working for ver 1.5x.
  // Problem is it only works after you click on a top menu [table] item.
  /*
  if ( !isset($_REQUEST['-sort']) and @$_REQUEST['-table'] == 'nte_note' ){
  $_REQUEST['-sort'] = $_GET['-sort'] = 'updatedtime desc';
  }
 */

if (!isset($_REQUEST['-sort']) and @$_REQUEST['-table'] == 'nte_about_this_app') {
    $_REQUEST['-sort'] = $_GET['-sort'] = 'updatedtime desc';
}


//df_init(__FILE__, "/xataface30801");
df_init(__FILE__, "/xataface");
$app = & Dataface_Application::getInstance();


//default filter: this works in index.php ,but not in applicationdelegate class.  David Gleba kdg54 2013-04-24
$query = & $app->getQuery();
if (!$_POST and $query['-table'] == 'nte_note' and !isset($query['active'])) {
    $query['active'] = 'Yes';
}

//default filter: this works in index.php ,but not in applicationdelegate class.  David Gleba kdg54 2013-04-24
/* $query =& $app->getQuery();
  if ( !$_POST and $query['-table'] == 'vw_nte_note' and !isset($query['active'])) {
  $query['active'] = 'No';
  }
 */

$app->display();
