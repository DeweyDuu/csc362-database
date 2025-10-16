<?php

include __DIR__ . "/../src/lab05Functions.php";


use PHPUnit\Framework\TestCase;

class lab05FunctionsTest extends TestCase 
{

    // Tests for summarize_text_file
    
    
    public function test_summarize_text_file_returns_array(): void {
        
        $sample = tempnam(sys_get_temp_dir(), "test");
        file_put_contents($sample, "This is Dewey! dewey is here! deWey IS HErE");

        $result = summarize_text_file($sample);

        $this->assertEquals(3, $result['dewey']);
        $this->assertEquals(3, $result['is']);
        $this->assertEquals(1, $result['this']);
        $this->assertEquals(2, $result['here']);
    }


    // Tests for make_multiplication_table


    public function test_make_multiplication_table_values(): void {
        
        $table = make_multiplication_table(3);
        $this->assertEquals(0, $table[0][1]);
        $this->assertEquals(2, $table[1][2]);
        $this->assertEquals(4, $table[2][2]);
    }


    // Tests for pad_to_longest


    public function test_pad_to_longest_right_padding(): void {
        $arr = ["dewey", "love", "coding"];
        pad_to_longest($arr, false);

        $longest_len = strlen("coding"); 
        foreach ($arr as $str) {
            $this->assertEquals($longest_len, strlen($str));
        }
        $this->assertEquals("dewey ", $arr[0]); 
        $this->assertEquals("love  ", $arr[1]); 
        $this->assertEquals("coding", $arr[2]); 
    }

    public function test_pad_to_longest_left_padding(): void {
        $arr = ["dewey", "love", "coding"];
        pad_to_longest($arr, true);

        $longest_len = strlen("coding");
        foreach ($arr as $str) {
            $this->assertEquals($longest_len, strlen($str));
        }

        $this->assertEquals(" dewey", $arr[0]); 
        $this->assertEquals("  love", $arr[1]); 
        $this->assertEquals("coding", $arr[2]);
    }
}

?>
