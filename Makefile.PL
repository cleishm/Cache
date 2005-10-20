use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Cache',
    'VERSION_FROM'	=> 'lib/Cache.pm', # finds $VERSION
    'AUTHOR'		=> 'Chris Leishman <chris@leishman.org>',
    'PREREQ_PM'		=> {
	Storable		=> 1.00,
	Date::Parse		=> 2.24,
	Test::More		=> 0.45,
	Heap::Fibonacci		=> 0.01,
	IO::String		=> 1.02,
	File::Find		=> 0, # any version
	File::Spec		=> 0.8,
	File::Path		=> 1.00,
	File::NFSLock		=> 1.20,
	Digest::SHA1		=> 2.01,
	Symbol			=> 1.02,
	IO::Handle		=> 1.21,
	IO::File		=> 1.08,
	Fcntl			=> 1.03,
	DB_File			=> 1.72,
    },
);
