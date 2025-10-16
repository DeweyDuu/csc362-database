<?php

function summarize_text_file(string $text_file_name): array {

    $contents = file_get_contents($text_file_name);

    $contents = preg_replace("/[^\p{L}\p{N}]/u", " ", $contents);
    $contents = strtolower($contents);
    $words = preg_split('/\s/', $contents, -1, PREG_SPLIT_NO_EMPTY);

    $word_counts = array_count_values($words);
    return $word_counts;
}


function make_multiplication_table(int $size): array {
    $table = [];

    for ($i = 0; $i < $size; $i++) {
        $row = [];
        for ($j = 0; $j < $size; $j++) {
            $row[$j] = $i * $j;
        }
        $table[$i] = $row;
    }
    return $table;
}



function pad_to_longest(array &$string_array, bool $do_pad_left = true): void {
    
    $long_length = 0;
    foreach ($string_array as $s) {
        if (strlen($s) > $long_length) {
            $long_length = strlen($s);
        }
}
    // Padding process
    foreach ($string_array as &$str) {
        $padding = $long_length - strlen($str);
        if ($do_pad_left) {
            $str = str_repeat(' ', $padding) . $str;
        } 
        else {
            $str =$str . str_repeat(' ', $padding);
        }
    }
}
?>