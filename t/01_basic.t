#!perl
use strict;
use warnings;
use Test::More;
use Algorithm::ConsistentHash::CHash;

my $ch = Algorithm::ConsistentHash::CHash->new(
  ids => [qw(node1 node2 node3)],
  replicas => 1000,
);

SCOPE: {
  my $where = $ch->lookup($_);
  ok(defined $where, "lookup output defined");
  ok($where eq 'node1' || $where eq 'node2' || $where eq 'node3',
     "lookup output is one of the valid values");
}

my %nodes;
for (1..10000) {
  my $where = $ch->lookup($_);
  $nodes{$where}++;
}

ok($nodes{node1} > 0);
ok($nodes{node2} > 0);
ok($nodes{node3} > 0);

pass("Alive");
done_testing();
