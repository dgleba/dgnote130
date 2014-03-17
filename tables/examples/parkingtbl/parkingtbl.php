<?php
class tables_parkingtbl
{
    function __sql__()
    {
      return "SELECT * 
      FROM `parkingtbl` 
      order by check_in desc,check_out desc,updatedtime desc";
    }
      

/*
    //validation works.
    //http://xataface.com/documentation/how-to/custom_validation
    //
    function room_number__validate( &$record, $value, $params=array()){
        if ( (int)$value > 1410.0 ){
            $params['message'] = "Sorry, this is an invalid room number.";
            return false;
        } else {
            // room number checks out OK.
            return true;
        }
    }
*/ 

}
