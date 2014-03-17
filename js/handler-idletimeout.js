 // reload browser after x minutes of inactivity
// kdg54 2013-09-04 -- 41 dgnote130pmds 41
// ref:
// http://stackoverflow.com/questions/9755706/javascript-countdown-timer-for-session-timeout
// other references..
// http://stackoverflow.com/questions/667555/detecting-idle-time-in-javascript-elegantly
// http://forums.devshed.com/showpost.php?p=1965136&postcount=10

jQuery(document).ready(function($) {

    var tmin = 62.0;
    var timeoutLength = tmin * 60 * 1000;  // min * 60 sec/min * 1000 millisec/sec
    var count = 1;

    var startTime1 = new Date();
    var startTime = startTime1.getTime(); // number of milliseconds since epoch time.

    var currentTime1 = new Date();
    var currentTime = currentTime1.getTime();
    ; // number of milliseconds since epoch time.

    window.onload = resetTimer;
    //document.onmousemove=resetTimer;  // no need to reset on every mouse movement.
    document.onkeypress = resetTimer;

    var interval = setInterval(checkTimeout, 1000);

    function checkTimeout() {
        currentTime1 = new Date();
        currentTime = currentTime1.getTime();
        ;
        var d = document.getElementById("timeoutdg2");
        d.innerHTML = Math.round(count);  //round down to 0 decimal places for display purposes
        //count = count +1.63;    //got 2200 count for 3600 seconds. 1.63 ratio.
        count = (currentTime + 2000 - startTime) / 1000;  //better -- use time for counter. add 2 to make the count larger than 3600 for an hour.
        if (currentTime > startTime + timeoutLength) {    //exactly 1 hour with tmin=60minutes. good. 
            clearInterval(interval);
            alert("Sufficient inactivity has been detected. Remember to press save often. You should press save again and refresh your browser to ensure you are logged in before typing any input.");
            //location.reload();  // reload the browser. If session has timed out, the login page will be displayed
        }
    }

    function resetTimer() {
        startTime1 = new Date();
        startTime = startTime1.getTime();
        //count = timeoutLength/1000;
        count = 0;
    }

});
