use strict;
use lib "../lib";
use Test::More;
use App::mgen;

subtest "generate test" => sub {
    @ARGV = qw/--dry-run Application::Module/;

    my $mgen = App::mgen->new;
    ok $mgen, "exist App::mgen";

    ok $mgen->generate, "generate ok";
};

done_testing;
