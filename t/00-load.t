#!perl -T

use Test::More tests => 4;

BEGIN {
    use_ok( 'Net::Bot::IRC::NumericCodes' );
}

diag( "Testing Net::Bot::IRC::NumericCodes $Net::Bot::IRC::NumericCodes::VERSION, Perl $], $^X" );

my $nc = NumericCodes->new();
ok( $nc && $nc->isa("NumericCodes"), "new()");
ok( $nc->num2str(001) eq "RPL_WELCOME", "num2str()");
ok( $nc->str2num("RPL_WELCOME") == 001, "str2num()");
