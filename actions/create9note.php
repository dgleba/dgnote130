<?php

// Continuation of mobile custom form development

class actions_create9note {

    function handle(&$params) {

        // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ get posted info
        if (isset($_POST['submit'])) {

            // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ retrieve correct record by id
            //echo "urlsave= ", $_POST['urlsave'], "<br/>";
            //echo "recid= ", $_POST['recid'], "<br/>";
            //echo "state= ", $_POST['state'], "<br/>";
            //echo "dtetime= ", $_POST['datetime-l'], "<br/>";

            $rrecord = new Dataface_Record('vw_nte_note', array());
            $rrecord->setValues(array(
                'note_fld' => $_POST['notef2'],
                'tags_fld' => $_POST['tagsf2'],
                'state_fld' => $_POST['state_n'],
                'datenote' => $_POST['datetime-l'],
                'active' => $_POST['active2']
            ));
            //$res = $record->save();   // Doesn't check permissions
            $res = $rrecord->save(null, true);  // checks permissions

            if (PEAR::isError($res)) {
                // An error occurred
                throw new Exception($res->getMessage());
            }

            // If there was an auto increment  id field, it will now be populated
            $rrecord->val('note_id');
            echo "noteid= ", $rrecord->val('note_id'), "<br/> <br/>";
            echo "result of save= ", $res, "<br/> <br/>";

            echo "<br/>Record Submitted<br/><br/>";
            echo "<a href='" . $_POST['urlsave'] . "'>Go  Back...</a>";
        } else {
            // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ prepare record for form

            $app = &Dataface_Application::getInstance();
            // reference to Dataface_Application object
            $auth = &Dataface_AuthenticationTool::getInstance();
            // reference to Dataface_Authentication object
            $user = &$auth->getLoggedInUser();
            // Dataface_Record object of currently logged in user.
            //$rrecord = &$app->getRecord();
            // Currently selected noterecord (Dataface_Record object)
            //$query = &$app->getQuery();
            //$url = $app->url('-action=list');
            //$rid = $rrecord->val('note_id');
            //echo "rid 1= ", $rid;
            $url = $app->url('-action=list');

            // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ display form
            include 'actions/create9note-frm.php';
        }
    }

}
