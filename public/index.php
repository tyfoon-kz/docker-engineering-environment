<?php

header('Content-Type: application/json');

echo json_encode([
    'app' => 'ecommerce-platform',
    'status' => 'ok',
    'db_host' => getenv('DB_HOST') ?: 'postgres',
    'redis_host' => getenv('REDIS_HOST') ?: 'redis',
], JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
