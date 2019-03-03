<?php

$data = [
    "Value 1:" => 5,
    "Value 2:" => 10,
    "Value 3:" => 20,
];

header('Content-Type: application/json');

echo json_encode($data);
