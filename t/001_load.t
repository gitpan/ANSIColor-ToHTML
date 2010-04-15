
use strict ;
use warnings ;

use Test::NoWarnings ;

use Test::More qw(no_plan);
use Test::Exception ;
#use Test::UniqueTestNames ;

BEGIN { use_ok( 'ANSIColor::ToHTML' ) or BAIL_OUT("Can't load module"); } ;

my $object = new ANSIColor::ToHTML ;

is(defined $object, 1, 'default constructor') ;
isa_ok($object, 'ANSIColor::ToHTML');

my $new_config = $object->new() ;
is(defined $new_config, 1, 'constructed from object') ;
isa_ok($new_config , 'ANSIColor::ToHTML');

dies_ok
	{
	ANSIColor::ToHTML::new () ;
	} "invalid constructor" ;
