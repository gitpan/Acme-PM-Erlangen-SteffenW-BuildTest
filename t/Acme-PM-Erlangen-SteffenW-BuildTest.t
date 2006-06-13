use 5.6.1;
use strict;
use warnings;
use Test::More tests => 5;
BEGIN { use_ok('Acme::PM::Erlangen::SteffenW::BuildTest') }
my $obj;
eval {
    $obj = Acme::PM::Erlangen::SteffenW::BuildTest->new(123);
};
ok
    $obj,
    'create an object',
;
{
    my $rv;
    eval { $rv = $obj->get };
    ok
        +($rv || 0) == 123,
        'get value 123',
    ;
}
{
    my $ro;
    eval { $ro = $obj->set(456) };
    ok
        +($ro || '') eq $obj,
        'set value 456, get back the object',
    ;
}
{
    my $rv;
    eval { $rv = $obj->get };
    ok
        +($rv || 0) == 456,
        'get value 456',
    ;
}