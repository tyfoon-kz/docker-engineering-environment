<?php

$safe = [
    'APP_ENV' => getenv('APP_ENV') ?: 'missing',
    'DB_HOST' => getenv('DB_HOST') ?: 'missing',
    'REDIS_HOST' => getenv('REDIS_HOST') ?: 'missing',
];

header('Content-Type: text/plain');

foreach ($safe as $name => $value) {
    echo $name . '=' . $value . PHP_EOL;
}
