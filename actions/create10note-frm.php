<!DOCTYPE html>
<!-- kdg54 red9c ver 2013-09-12 ver 35 -->











<!-- use 9 instead -->












<html>
    <head>
        <title>Create Form 10 Mobile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
        <script type="text/javascript"> $('.selector').textinput('enable');</script>
    </head>

    <body>
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   debugging           -->
        <!-- 
   
        <?php echo "debug datetime prefill from database"; ?>
        <?php
        echo "<br/>rrecord strval('datenote') = ", $rrecord->strval('datenote');
        $date1 = new DateTime($rrecord->strval('datenote'));
        //echo "$date1";
        echo "<br/> date1 format(DateTime::ISO8601) = ", $date1->format(DateTime::ISO8601);


        echo "<br/> strto ", date("Y-m-d", strtotime($rrecord->strval('datenote')));

        echo "<br/>Now: ", strtotime("now"), "\n";
        ?>
        -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   end debugging           -->


        <form action="index.php" id="form9" method="POST" data-ajax="false">

            <div data-role="fieldcontain">
                <label for="notef2">Note:</label>
                <textarea cols="40" rows="8" name="notef2" id="notef2"></textarea>
            </div>

            <div data-role="fieldcontain">
                <label for="datetime-l">Datetime local:</label>
                <input type="datetime-local" name="datetime-l" id="datetime-l"    />
            </div>

            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   not in use          
                <div data-role="fieldcontain">
                    <label for="datetime-2">Datetime local:</label>
                    <input type="datetime-local" name="datetime-2" id="datetime-2"  value="<?php echo $rrecord->strval('datenote') ?>" />
                </div>
    
                <div data-role="fieldcontain">
                    <label for="datetime-3">Date:</label>
                    <input type="date" name="datetime-3" id="datetime-3"  value="<?php
            echo date("Y-m-d", strtotime($rrecord->strval('datenote')));
            ?>" />
                </div>
    
                <div data-role="fieldcontain">
                    <label for="datetime-4">Date:</label>
                    <input type="datetime" name="datetime-4" id="datetime-4"  value="<?php
            echo date("Y-m-d\TH:i", strtotime($rrecord->strval('datenote')));
            //http://stackoverflow.com/questions/10040291/converting-a-unix-timestamp-to-formatted-date-string
            ?>" />
                </div>
    
                <input type="hidden" name="recid" value="<?php echo $rid ?>" />
            -->


            <input type="hidden" name="urlsave" value="<?php echo $url ?>" />
            <input type="hidden" name="-action" value="create10note" />
            <input type="submit" value="Submit" id="submit" name="submit" data-theme="a" />
        </form>

    </body>

</html>
