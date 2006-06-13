use strict;
use warnings;

use Module::Build;

Module::Build->new(
    module_name => 'Acme::PM::Erlangen::SteffenW::BuildTest',
    license  => 'perl',
    requires => {
        perl                => '5.6.1',
        'Test::More'        => '>= 0',
        'Tie::Scalar'       => '>= 0',
        #'Other::Module'    => '>= 1.2, != 1.5, < 2.0',
        #create_makefile_pl => 'passthrough',
        #create_readme      => 1,
        #create_packlist    => 1,
    },
)->create_build_script;
