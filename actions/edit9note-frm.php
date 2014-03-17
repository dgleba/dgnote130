<!DOCTYPE html>
<!-- edit9note-frm.php version 2013-09-16 pmds-data -- 50 -->
<!-- 2013-09-16_Mon_14.44-PM added autocorrect="off" in input so that iphone will not autocorrect the state.-->	

<html>
    <head>
        <title>Edit Form Mobile</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
        <link rel="stylesheet" type="text/css" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/redmond/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
        <!-- <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script> -->
        <!-- <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script> -->
        <script type="text/javascript" src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
        <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

        <script type="text/javascript">
            $(function() {
// ----------------------------------------------- get autocomplete values list..
                $("#state").autocomplete({
                    source: "actions/states.php",
                    minLength: 1,
                    select: function(event, ui) {
                        $('#state_id').val(ui.item.id);
                        $('#abbrev').val(ui.item.abbrev);
                    }
                });
            });
        </script>

        <script type="text/javascript">
            $(document).ready(function() {
                // ----------------------------------------------- pre-select the select menu with id=active2 below...
                $("#active2").val("<?php echo $rrecord->strval('active'); ?>");
                // some posts said newer jqm needs this... $('active2 option[value=Yes]').prop('selected', 'selected');
                $("#active2").selectmenu("refresh");

                //$("#active2").bind("change", function() {
                //this never worked.
                // noworky - duh wrong id name... $("#datetime-1").val(<?php echo $rrecord->strval('active'); ?>);
                //http://stackoverflow.com/questions/1573930/jquery-programmatically-select-an-option-in-select-box
                // $('active2 option[value=<?php echo $rrecord->strval('active'); ?>]').prop('selected', 'selected');
                //$("#active2").val("<?php echo $rrecord->strval('active'); ?>");
                //$("#active2").selectmenu("refresh");
                //});
            });
        </script>

    </head>

    <body>

        <form action="index.php" id="form9" method="POST" data-ajax="false">

            <div data-role="fieldcontain">
                <label for="notef2">Note:</label>
                <textarea cols="40" rows="8" name="notef2" id="notef2"> <?php echo $rrecord->strval('note_fld'); ?> </textarea>
            </div>

            <div data-role="fieldcontain">
                <label for="text">TagsFld:</label>
                <input type="text"  name="tagsf2" id="tagsf2-tag" autocorrect="off" value="<?php echo $rrecord->strval('tags_fld'); ?>" />
            </div>

            <div class="control-group">
                <label for="state">State (abbreviation in separate field): </label>
                <div class="controls">
                    <input type="text" id="state"  name="state" autocorrect="off"  value="<?php echo $rrecord->strval('state_fld'); ?>" />
                    <!-- <input readonly="readonly" type="text" id="abbrev" name="abbrev" maxlength="2" size="2"/> -->
                    <input type="hidden" id="state_id" name="state_id" />
                    <input type="hidden" id="form_submitted" name="form_submitted" value="true" />
                </div>
            </div>

            <div data-role="fieldcontain">
                <label for="select" class="select">Active:</label>
                <select name="active2" id="active2" class="required">
                    <option>Please select...</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>

            <!-- -->	

            <div data-role="fieldcontain">
                <label for="datetime-l">Datetime local:</label>
                <input type="datetime-local" name="datetime-l" id="datetime-l"  value="<?php

                //http://php.net/manual/en/function.date.php -- look for: 'If you want to use HTML5's <date> tag, the following' 
                function getDateTimeValue($intDate = null) {   //returns HTML5 date text input formatted as datetime or current date if nothing is passed.
                    $strFormat = 'Y-m-d\TH:i';
                    $strDate = $intDate ? date($strFormat, $intDate) : date($strFormat);
                    return $strDate;
                }

                echo getDateTimeValue(strtotime($rrecord->strval('datenote')));
                // for current date... echo getDateTimeValue();   
                ?>" />
            </div>

            <!-- -->
            <!-- pass some reference info to the php file getting the posted info... -->
            <input type="hidden" name="recid" value="<?php echo $rid ?>" />
            <input type="hidden" name="urlsave" value="<?php echo $url ?>" />
            <input type="hidden" name="-action" value="edit9note" />
            <input type="submit" value="Submit" id="submit" name="submit" data-theme="a" />
        </form>

    </body>

</html>
