use inc::Module::Install;

name     'Filesys-Rsync-Backup';
all_from 'lib/Filesys/Rsync/Backup.pm';
author   q{Nikolay Martynov <kolya@cpan.org>};
license  'perl';

requires 'DateTime';
requires 'DateTime::Duration';
requires 'DateTime::Format::Duration';
requires 'DateTime::Format::Strptime';
requires 'Time::HiRes';
requires 'Path::Class';
requires 'File::stat';
requires 'IPC::Run';
requires 'Try::Tiny';
requires 'Config::YAML';
requires 'Getopt::Long';
requires 'Pod::Usage';
requires 'Net::SFTP::Foreign';

install_script 'rsync-backup';

test_requires 'Test::More';
test_requires 'Test::Exception';
test_requires 'Test::Deep';

auto_install;

WriteAll;

