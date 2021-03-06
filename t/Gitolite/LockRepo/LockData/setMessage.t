#!/usr/bin/env perl

use strict;
use warnings;

use lib $ENV{GL_LIBDIR};

use Test::More;
use Gitolite::LockRepo::LockData;

my %myData = ();
is( getMessage(%myData), '', 'Empty hash.');

%myData = setMessage('message', %myData);
is( getMessage(%myData), 'message', 'Message set.');

done_testing();
