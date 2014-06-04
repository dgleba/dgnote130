<?php

###########################################################################
#                                                                         #
# Neither http://www.4webhelp.net/ nor its members accept any             #
# responsibility, either expressed or implied, for any damage caused by   #
# using this script or the misuse of this script.                         #
#                                                                         #
#                          INSTRUCTIONS                                   #
#                                                                         #
# 1) Copy this code to an editor such as Notepad and save it with a       #
# .php  extension.                                                        #
# 2) FTP this file to a folder on your site in ASCII mode                 #
# 3) Call up this file in your web browser to see your phpinfo            #
#                                                                         #
###########################################################################
echo 'My username is ' .$_ENV["USER"] . '<br/>';

echo 'My username is ' .$_ENV["COMPUTERNAME"] . '<br/>';

echo gethostname(); // may output e.g,: sandie
// Or, an option that also works before PHP 5.3
echo '<br/>';
echo '<br/>';
echo php_uname('n'); // may output e.g,: sandie
echo '<br/>';

echo getenv('REMOTE_ADDR');
echo '<br/>';
echo getenv('HOMESHARE');
echo '<br/>';
echo getenv('USERNAME');
echo '<br/>';
echo '<br/>';

var_dump($_SERVER);
echo '<br/>';
echo '<br/>';



phpinfo();

?>

<p>This script courtesy of <a href="http://www.4webhelp.net/">4WebHelp</a>.</p>
