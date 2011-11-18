<?php
$br = (php_sapi_name() == "cli")? "":"<br>";

if(!extension_loaded('jsmin')) {
	dl('jsmin.' . PHP_SHLIB_SUFFIX);
}
$module = 'jsmin';
$functions = get_extension_funcs($module);
echo "Functions available in the test extension:$br\n";
foreach($functions as $func) {
    echo $func."$br\n";
}
echo "$br\n";

$str = "var i=0;" . 
$b = jsminify($str);

echo "MINIFIED IS: $b";

