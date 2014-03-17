<?php

// simple mobile custom form per Steve's post 2013-09-09

class actions_edit7note {
	function handle(&$params) {

		// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ get posted info
		if (isset($_POST['submit'])) {

		    // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ retrieve correct record by id
			echo "urlsave= ", $_POST['urlsave'], "<br/>";
			echo "recid= ", $_POST['recid'], "<br/>";
			$rrecord = df_get_record('vw_nte_note', array('note_id' => $_POST['recid']));

			$rrecord -> setValue('note_fld', $_POST['notef2']);
			$rrecord -> setValue('tags_fld', $_POST['tagsf2']);
			$rrecord -> setValue('active', $_POST['active2']);
			// Commit the changes to the database
			$rrecord -> save();

			echo "<br/>Record Submitted<br/><br/>";
			echo "<a href='" . $_POST['urlsave'] . "'>Go  Back...</a>";

		} else {
			// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ display form

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
			$rid = $rrecord -> val('note_id');
			echo "rid 1= ", $rid;
			$url = $app -> url('-action=browse');

			// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ display form
			include 'actions/edit7note-frm.php';
		}

	}

}
