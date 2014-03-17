<?php

// Continuation of mobile custom form

class actions_edit9note {

    function handle(&$params) {

        // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ get posted info
        if (isset($_POST['submit'])) {

            // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ retrieve correct record by id
            echo "urlsave= ", $_POST['urlsave'], "<br/>";
            echo "recid= ", $_POST['recid'], "<br/>";
            echo "state= ", $_POST['state'], "<br/>";
            echo "dtetime= ", $_POST['datetime-l'], "<br/>";
            //echo "dtetime2= ", $_POST['datetime-2'], "<br/>";
            //echo "dtetime3= ", $_POST['datetime-3'], "<br/>";

            $rrecord = df_get_record('vw_nte_note', array('note_id' => $_POST['recid']));

            $rrecord->setValue('note_fld', $_POST['notef2']);
            $rrecord->setValue('tags_fld', $_POST['tagsf2']);
            $rrecord->setValue('active', $_POST['active2']);
            $rrecord->setValue('datenote', $_POST['datetime-l']);
            $rrecord->setValue('state_fld', $_POST['state']);

            // Commit the changes to the database
            //$res = $rrecord -> save();
            $res = $rrecord->save();   // Doesn't check permissions
            //$res = $rrecord->save(null, true);  // checks permissions
            if (PEAR::isError($res)) {
                // An error occurred
                throw new Exception($res->getMessage());
            }


            echo "<br/><br/><br/><span style='font-size:48px;'> Record Submitted </span><br/><br/>";
            echo "<span style='font-size:48px;'> <a href='" . $_POST['urlsave'] . "'>Go  Back...</a> </span>";
        } else {
            // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ prepare record for form

            $app = &Dataface_Application::getInstance();
            // reference to Dataface_Application object
            $auth = &Dataface_AuthenticationTool::getInstance();
            // reference to Dataface_Authentication object
            $user = &$auth->getLoggedInUser();
            // Dataface_Record object of currently logged in user.
            $rrecord = &$app->getRecord();
            // Currently selected noterecord (Dataface_Record object)
            $query = &$app->getQuery();
            //$url = $app->url('-action=list');
            $rid = $rrecord->val('note_id');
            //echo "rid 1= ", $rid;
            $url = $app->url('-action=browse');

            // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ display form
            include 'actions/edit9note-frm.php';
        }
    }

}
