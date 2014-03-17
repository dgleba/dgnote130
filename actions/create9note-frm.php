<!DOCTYPE html>
<!-- kdg54 ver 2013-11-07 ver tortoise project 71 -->
<!-- 2013-11-07_Thu_15.52-PM multiple autocomplete working. -->
<!-- kdg54 pmds-data ver 2013-09-17 ver 61 added validation per raymond camden example - class="required"  http://www.raymondcamden.com/index.cfm/2012/7/30/Example-of-form-validation-in-a-jQuery-Mobile-Application -->

<html>
    <head>
        <title>Create Form Mobile 9</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
        <link rel="stylesheet" type="text/css" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/redmond/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
        <link rel="stylesheet" href="css/create9form.css" />
        <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

        <script type="text/javascript">
            // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ initialize validation plugin jquery.validate.min.js
            $(document).on("pageshow", "#create9Page", function() {
                $("#cform9").validate();
            });</script>

        <script type="text/javascript">
            $(function() {
                $("#state_cid").autocomplete({
                    source: "actions/states.php",
                    minLength: 2,
                    //select: function(event, ui) {
                    //$('#state_id').val(ui.item.id);
                    //$('#abbrev').val(ui.item.abbrev);
                    //}
                    //reference: http://www.jensbits.com/2010/03/29/jquery-ui-autocomplete-widget-with-php-and-mysql/
                });
            });</script>

        <script type="text/javascript">
            // multiple-remote autocomplete http://jqueryui.com/autocomplete/#multiple-remote   2013-11-07_Thu_15.55-PM
            // php from: http://www.jensbits.com/2010/03/29/jquery-ui-autocomplete-widget-with-php-and-mysql/
            $(function() {
                function split(val) {
                    return val.split(/,\s*/);
                }
                function extractLast(term) {
                    return split(term).pop();
                }
                $("#tagsf2")
                        // don't navigate away from the field on tab when selecting an item
                        .bind("keydown", function(event) {
                    if (event.keyCode === $.ui.keyCode.TAB &&
                            $(this).data("ui-autocomplete").menu.active) {
                        event.preventDefault();
                    }
                })
                        .autocomplete({
                    source: function(request, response) {
                        $.getJSON("actions/tags.php", {
                            term: extractLast(request.term)
                        }, response);
                    },
                    search: function() {
                        // custom minLength
                        var term = extractLast(this.value);
                        if (term.length < 2) {
                            return false;
                        }
                    },
                    focus: function() {
                        // prevent value inserted on focus
                        return false;
                    },
                    select: function(event, ui) {
                        var terms = split(this.value);
                        // remove the current input
                        terms.pop();
                        // add the selected item
                        terms.push(ui.item.value);
                        // add placeholder to get the comma-and-space at the end
                        terms.push("");
                        this.value = terms.join(", ");
                        return false;
                    }
                });
            });
        </script>
    </head>

    <body>
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   debugging           -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   end debugging           -->
        <div data-role="page" id="create9Page">

            <div id="errorBox"><ul></ul></div>

            <form action="index.php" id="cform9" method="POST" data-ajax="false">

                <div data-role="fieldcontain">
                    <label for="notef2">Note:</label>
                    <textarea cols="40" rows="8" name="notef2" id="notef2" class="required"></textarea>
                </div>

                <!--   this with no autocomplete...         <div data-role="fieldcontain">
                                    <label for="text">TagsFld:</label>
                                    <input type="text"  name="tagsf2" id="tagsf2-tag" autocorrect="off" value="" class="required"/>
                                </div> -->

                <div class="control-group">
                    <label for="tagsf2">TagsField: </label>
                    <div class="controls">
                        <input type="text" id="tagsf2"  name="tagsf2" autocorrect="off" class="required"  />
                    </div>
                </div>


                <div class="control-group">
                    <label for="state_f">State (abbreviation in separate field): </label>
                    <div class="controls">
                        <input type="text" id="state_cid"  name="state_n" autocorrect="off" class="required"  />
                        <!-- <input readonly="readonly" type="text" id="abbrev" name="abbrev" maxlength="2" size="2"/> -->
                        <!--<input type="hidden" id="state_id" name="state_id" />-->
                        <input type="hidden" id="form_submitted" name="form_submitted" value="true" />
                    </div>
                </div>

                <div data-role="fieldcontain">
                    <label for="select" class="select">Active:</label>
                    <select name="active2" id="active2" class="required">
                        <option value="">Please select...</option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select>
                </div>

                <!-- -->	

                <div data-role="fieldcontain">
                    <label for="datetime-l">Datetime local:</label>
                    <input type="datetime-local" name="datetime-l" id="datetime-l" class="required" value="<?php

                    //http://php.net/manual/en/function.date.php -- look for: 'If you want to use HTML5's <date> tag, the following' 
                    function getDateTimeValue($intDate = null) {   //returns HTML5 date text input formatted as datetime or current date if nothing is passed.
                        $strFormat = 'Y-m-d\TH:i';
                        $strDate = $intDate ? date($strFormat, $intDate) : date($strFormat);
                        return $strDate;
                    }
                    echo getDateTimeValue();
                    // for current date... echo getDateTimeValue();   
                    ?>" />
                </div>

                <input type="hidden" name="urlsave" value="<?php echo $url ?>" />
                <input type="hidden" name="-action" value="create9note" />
                <input type="submit" value="Submit" id="submit" name="submit" data-theme="a" />
            </form>
        </div>
    </body>

</html>
