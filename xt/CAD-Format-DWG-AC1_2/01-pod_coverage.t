use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('CAD::Format::DWG::AC1_2', 'CAD::Format::DWG::AC1_2 is covered.');
