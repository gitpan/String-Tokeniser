# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..5\n"; }
END {print "not ok 1\n" unless $loaded;}
use String::Tokeniser;
$loaded = 1;
print "not " unless String::Tokeniser::ishere();
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

# Test it can new:

$testtwo = String::Tokeniser->new("The quick brown foo_bar") or print "not ";
print "ok 2\n";

print "not " unless join(":",@{$testtwo->{LIST}}) eq "The: :quick: :brown: :foo_bar:";
print "ok 3\n";

# Now check for weave-style tokenising:

$testfour = String::Tokeniser->new("The quick brown foo_bar",-1) or print "not";
print "ok 4\n";

print "not " unless join(":",@{$testfour->{LIST}}) eq 
			"The: :quick: :brown: :foo:_:bar:";
print "ok 5\n";

