use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
	      'NAME'         => 'String::Tokeniser',
	      'VERSION_FROM' => 'Tokeniser.pm', # finds $VERSION
	      'PREREQ_PM'    => {
				 'Test::Pod::Coverage'  => '1.04',
				 'Test::Pod' => '1.14',
				},
);
