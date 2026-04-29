<?php

header('Content-Type: text/plain; charset=utf-8');

echo "ecommerce-platform Xdebug runtime is running\n";
echo "PHP " . PHP_VERSION . "\n";
echo "Xdebug " . (extension_loaded('xdebug') ? 'loaded' : 'not loaded') . "\n";
