<?php

class tables_vw_nte_note {

    function __sql__() {
        return
                "SELECT *, group_concat(t.tags_list) as tagslisted 
      FROM `vw_nte_note` n 
      left join nte_note_tags as nt on n.note_id = nt.nid 
      left join nte_tags as t on nt.tid = t.tags_id 
      group by n.note_id 
      order by n.updatedtime desc
      ";
    }
    
/*    
where updatedtime > '10/09/12 13:50:47'

SELECT *, group_concat(t.tags_list) as tagslisted 
      FROM `vw_nte_note` n 
      left join nte_note_tags as nt on n.note_id = nt.nid 
      left join nte_tags as t on nt.tid = t.tags_id 
      group by n.note_id 
      order by n.updatedtime desc
      WHERE `updatedtime` >= '2013-10-01 00:00:00'

SELECT * FROM `vw_nte_note` WHERE `updatedtime` >= '2013-10-01 00:00:00'
      
*/

      
    function getTitle(&$record) {
        return str_pad( mb_substr($record->val('note_fld'),0,35),35," ") ;
        //return str_pad( mb_substr($record->val('note_fld'),0,22),22,"_") . " -- ". $record->strval('updatedtime');
    }

    /**
     * Trigger that is called after a record is inserted.
     * @param $record Dataface_Record object that has just been inserted.
      function afterInsert(&$record){

      2013-04-22_Mon_10.52-AM  David Gleba kdg54 DRG:
      -note that afterinsert doesn't pickup the tagslisted group_contat
      -it now does after re-reading the record with df_get_record.

     */
    function after_action_new($params = array()) {
        $record = & $params['record'];

        $noterecord = df_get_record('nte_note', array('note_id' => $record->val('note_id')));

        $to1 = 'dgleba@gmail.com';
        $subject1 = 'Nte_note Record Submitted';

        $headers1 = "From: " . "DGnote130" . "\r\n";
        $headers1 .= "Reply-To: " . "Do-not@reply" . "\r\n";
        $headers1 .= "MIME-Version: 1.0\r\n";
        $headers1 .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

        $message1 = '<html><body>';
        $message1 .= 'Contents of record submitted:' . "<br>";
        $message1 .= '<table rules="all" style="border-color: #666;" cellpadding="10">';

        $message1 .= "<tr style='background: #eee;'><td><strong>Note_fld:</strong> </td><td>" . $noterecord->val('note_fld') . "</td></tr>";
        $message1 .= "<tr style='background: #eee;'><td><strong>Tagslisted:</strong> </td><td>" . $noterecord->strval('tagslisted') . "</td></tr>";
        $message1 .= "<tr style='background: #eee;'><td><strong>Createdtime:</strong> </td><td>" . $noterecord->strval('createdtime') . "</td></tr>";
        $message1 .= "<tr style='background: #eee;'><td><strong>Updatedtime:</strong> </td><td>" . $noterecord->strval('updatedtime') . "</td></tr>";
        $message1 .= "<tr style='background: #eee;'><td><strong>Note_id:</strong> </td><td>" . $noterecord->val('note_id') . "</td></tr>";
        $message1 .= "<tr style='background: #eee;'><td><strong>Active:</strong> </td><td>" . $noterecord->val('active') . "</td></tr>";
        $message1 .= "<tr style='background: #eee;'><td><strong>Datenote:</strong> </td><td>" . $noterecord->strval('datenote') . "</td></tr>";

        $message1 .= "</table>";
        $message1 .= "</body></html>";

        if (mail($to1, $subject1, $message1, $headers1)) {
            echo 'Your message has been sent.';
        } else {
            echo 'There was a problem sending the email.';
        }
    }

    /*
      function afterInsert(&$record){

      $to1 = 'dgleba@gmail.com';
      $subject1 = 'afterInsert Nte_note Record Submitted';

      $headers1 = "From: " . "DGnote130" . "\r\n";
      $headers1 .= "Reply-To: ". "Do-not@reply" . "\r\n";
      $headers1 .= "MIME-Version: 1.0\r\n";
      $headers1 .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

      $message1 = '<html><body>';
      $message1 .= 'afterInsert - Contents of record submitted:'. "<br>";
      $message1 .= '<table rules="all" style="border-color: #666;" cellpadding="10">';

      $message1 .= "<tr style='background: #eee;'><td><strong>Note_fld:</strong> </td><td>" . $record->val('note_fld') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Tagslisted:</strong> </td><td>" . $record->strval('tagslisted') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Createdtime:</strong> </td><td>" . $record->strval('createdtime') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Updatedtime:</strong> </td><td>" . $record->strval('updatedtime') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Note_id:</strong> </td><td>" . $record->val('note_id') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Active:</strong> </td><td>" . $record->val('active') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Datenote:</strong> </td><td>" . $record->strval('datenote') . "</td></tr>";

      $noterecord = df_get_record('nte_note', array('note_id'=>$record->val('note_id')));

      $message1 .= 'afterInsert After get record:';

      $message1 .= "<tr style='background: #eee;'><td><strong>Note_fld:</strong> </td><td>" . $noterecord->val('note_fld') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Tagslisted:</strong> </td><td>" . $noterecord->strval('tagslisted') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Createdtime:</strong> </td><td>" . $noterecord->strval('createdtime') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Updatedtime:</strong> </td><td>" . $noterecord->strval('updatedtime') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Note_id:</strong> </td><td>" . $noterecord->val('note_id') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Active:</strong> </td><td>" . $noterecord->val('active') . "</td></tr>";
      $message1 .= "<tr style='background: #eee;'><td><strong>Datenote:</strong> </td><td>" . $noterecord->strval('datenote') . "</td></tr>";

      $message1 .= "</table>";
      $message1 .= "</body></html>";

      if (mail($to1, $subject1, $message1, $headers1)) {
      echo 'Your message has been sent.';
      } else {
      echo 'There was a problem sending the email.';
      }
      }
     */
//end of class...     
}
