use 5.008005;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME           => 'Algorithm::ConsistentHash::CHash',
    VERSION_FROM   => 'lib/Algorithm/ConsistentHash/CHash.pm',
    PREREQ_PM      => {
      'Test::More'        => 0,
      'ExtUtils::ParseXS' => '3',
    },
    ABSTRACT_FROM  => 'lib/Algorithm/ConsistentHash/CHash.pm',
    AUTHOR         => [
        'Eric Herman <eric@freesa.org>',
        'Sawyer X <xsawyerx@cpan.org>',
        'Steffen Mueller <smueller@cpan.org>',
    ],
    LIBS           => [''],         # e.g., '-lm'
    DEFINE         => '-std=c99',           # e.g., '-DHAVE_SOMETHING'
    INC            => '-I.',        # e.g., '-I. -I/usr/include/other'
    OBJECT         => '$(O_FILES)', # link all the C files too
);

