use strict;
use warnings;
use Cache::Tester;
use File::Temp qw(tempdir);
use Carp;

$SIG{__DIE__} = sub { confess @_; };

BEGIN { plan tests => 2 + $CACHE_TESTS }

use_ok('Cache::File');

# Test basic get/set and remove

my $tempdir = tempdir(CLEANUP => 1);
#my $tempdir = tempdir();
my $cache = Cache::File->new(cache_root => $tempdir);
ok($cache, 'Cache created');

run_cache_tests($cache);
