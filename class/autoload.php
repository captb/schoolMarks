<?php

function __autoload($class_name) {
    include __DIR__.'/'. $class_name . '.class.php';
}

?>