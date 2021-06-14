#!/usr/bin/perl


use strict;
use warnings;
use diagnostics;

use 5.10.0;

for my $n (1..100) {
    # Print word if...
    !($n % 15) ?    say "FizzBuzz"    :   
    !($n % 3)  ?    say "Fizz"        :   
    !($n % 5)  ?    say "Buzz"        :   
                    say "$n";            
}
