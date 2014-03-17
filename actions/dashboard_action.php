<?php
class actions_dashboard_action {
    function handle(&$params){
        $reclst = df_get_records_array('vw_nte_note', array());
        df_display(array('vw_nte_note'=>$reclst), 'dashboard.html');
    }
}