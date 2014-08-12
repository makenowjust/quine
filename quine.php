<?php
$s = '$s';
$s = "<?php\n$s = '$s';\n$s = %s;\nprintf($s, json_encode($s));\n";
printf($s, json_encode($s));
