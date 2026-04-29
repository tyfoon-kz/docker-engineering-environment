<?php

header('Content-Type: text/plain; charset=utf-8');

$env = getenv('APP_ENV') ?: 'local';
$name = getenv('APP_NAME') ?: 'ecommerce-platform';

echo "$name environment contract stack is running\n";
echo "APP_ENV=$env\n";
echo "PHP-FPM " . PHP_VERSION . "\n";
