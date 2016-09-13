use 5.014;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Locale::Maketext::ManyPluralForms',
    VERSION_FROM     => 'lib/Locale/Maketext/ManyPluralForms.pm',
    AUTHOR           => 'Binary.com (binary@cpan.org)',
    ABSTRACT         => 'Locale::Maketext supporting many plural forms',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.014,
    BUILD_REQUIRES   => {
        'Test::More'                => 0,
        'File::Spec::Functions'     => 0,
        'File::Basename'            => 0,
        'Locale::Maketext::Lexicon' => 0,
        'Locale::Maketext'          => 0,
    },
    PREREQ_PM => {
        'Test::Simple'              => 0.44,
        'Test::More'                => 0,
        'Test::Warn'                => 0,
        'File::Spec::Functions'     => 0,
        'File::Basename'            => 0,
        'Encode'                    => 0,
        'Locale::Maketext::Lexicon' => 0,
        'Locale::Maketext'          => 0,
    },
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 6.64,
    },
    dist => {
        COMPRESS => 'gzip -9f',
        SUFFIX   => 'gz',
    },
    META_MERGE => {
        requires  => {perl => 5.014},
        resources => {
            homepage   => 'https://github.com/binary-com/perl-Locale-Maketext-ManyPluralForms',
            bugtracker => 'https://github.com/binary-com/perl-Locale-Maketext-ManyPluralForms/issues',
            repository => 'git://github.com/binary-com/perl-Locale-Maketext-ManyPluralForms',
            license    => 'http://dev.perl.org/licenses/',
        },
        x_contributors => ['Evgeniy Vostrov <vostrov.e@gmail.com>'],
    },
);
