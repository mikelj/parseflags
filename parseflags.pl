#!/usr/bin/perl

use strict;
use warnings;
no warnings 'portable';

use Switch;

my $flags;
if ($ARGV[0]) {
    $flags = $ARGV[0];
} else {
    print "Enter flags to parse: ";
    $flags = <STDIN>;
}
chomp $flags;

my $binflags = sprintf("%064b", hex($flags));
my @digits = split("", $binflags);

@digits = reverse(@digits);
#for my $digit (@digits) {
#    print $digit;
#}

my $ii = 0;
for my $digit (@digits) {

    if ($digit) {
        switch ($ii) {
            case 0  { print "PG_locked\n"; }
            case 1  { print "PG_error\n"; }
            case 2  { print "PG_referenced\n"; }
            case 3  { print "PG_uptodate\n"; }
            case 4  { print "PG_dirty\n"; }
            case 5  { print "PG_lru\n"; }
            case 6  { print "PG_active\n";}
            case 7  { print "PG_slab\n";}
            case 8  { print "PG_owner_priv_1\n";}
            case 9  { print "PG_arch_1\n"; }
            case 10 { print "PG_reserved\n"; }
            case 11 { print "PG_private\n"; }
            case 12 { print "PG_private_2\n"; }
            case 13 { print "PG_writeback\n"; }
            case 14 { print "PG_head\n"; }
            case 15 { print "PG_tail\n"; }
            case 16 { print "PG_compound\n"; }
            case 17 { print "PG_swapcache\n"; }
            case 18 { print "PG_mappedtodisk\n"; }
            case 19 { print "PG_reclaim\n"; }
            case 20 { print "PG_buddy\n"; }
            case 21 { print "PG_swapbacked\n"; }
            case 22 { print "PG_unevictable\n"; }
            case 23 { print "PG_mlocked\n"; }
            case 24 { print "PG_uncached\n"; }
            case 25 { print "PG_hwpoison\n"; }
            case 26 { print "PG_compound_lock\n";}
            case 27 { last; }
        }            
    }
    $ii++;
}

$ii = 0;
@digits = reverse(@digits);

for my $digit (@digits) {
    if ($digit) {
        switch ($ii) {
            case 0  { print "PG_slub_debug\n"; }
            case 1  { print "PG_slub_frozen\n"; }
            case 2  { print "PG_slob_free\n"; }
            case 3  { print "PG_savepinned\n"; }
            case 4  { print "PG_pinned\n"; }
            case 5  { print "PG_fscache\n"; }
            case 6  { print "PG_checked\n"; }
            case 7  { last; }
        }
    }
    $ii++;
}
