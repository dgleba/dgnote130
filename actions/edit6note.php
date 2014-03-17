<?php

// simple html custom form per Steve's post 2013-09-09

class actions_edit6note {
	function handle(&$params) {

		$url1;
		
		$app = &Dataface_Application::getInstance();
		// reference to Dataface_Application object
		$auth = &Dataface_AuthenticationTool::getInstance();
		// reference to Dataface_Authentication object
		$user = &$auth -> getLoggedInUser();
		// Dataface_Record object of currently logged in user.
		$rrecord = &$app -> getRecord();
		// Currently selected noterecord (Dataface_Record object)
		$query = &$app -> getQuery();
		//$url = $app->url('-action=list');

		$url = $app -> url('-action=browse');
		//$url = $app->url('');
		echo $url;
		echo "<br/>";
		//echo $query;

		if (isset($_POST['submit'])) {
			//echo $_POST['notef2'];
			//sleep(1);
			//Using setValue() to set a single field value.
			$rrecord -> setValue('note_fld', $_POST['notef2']);
			$rrecord -> setValue('tags_fld', $_POST['tagsf2']);
			// Commit the changes to the database
			$rrecord -> save();
			echo "<br/>Record Submitted <br/><br/>";
			echo "<a href='" . $url1 . "'>Go  Back...</a>";
			//usleep(2);
			// http://xataface.com/wiki/Selected_Records_Actions  --  Redirect back to the previous page
			//header('Location: '.$url);
			//exit;
		} else {

			$url1 = $url;
			//$url = $app->url('');
			echo $url1;
			echo "<br/>";
			//echo $query;

			// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ display form
			include 'actions/edit6note-frm.php';
		}

	}

}
