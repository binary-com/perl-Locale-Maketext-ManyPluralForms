#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

use File::Spec::Functions qw(rel2abs);
use File::Basename;

BEGIN {
    require Locale::Maketext::ManyPluralForms;
    my $abs_dir = dirname(rel2abs($0));
    Locale::Maketext::ManyPluralForms->import({'*' => ['Gettext' => "$abs_dir/*.po"]});
}

my $lh = Locale::Maketext::ManyPluralForms->get_handle('ru');

is $lh->maketext("[_1] cup", 1), '1 чашка';
is $lh->maketext("[_1] cup", 3), '3 чашки';
is $lh->maketext("[_1] cup", 7), '7 чашек';

done_testing();
