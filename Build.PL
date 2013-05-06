use Module::Build;
Module::Build->new(
    module_name => 'Pompiedom::Ping',
    license     => 'GPL_3',
    requires => {
        'LWP::UserAgent' => '0',
    },
    configure_requires => { 'Module::Build' => 0.38 },
)->create_build_script;

