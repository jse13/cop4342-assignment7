#!/usr/bin/perl -w

use strict;
use Getopt::Std;


my %opts;
my $sourceDirPath;
my $destDirPath;


# Get arguments
getopt('s:d:', \%opts);

if(defined($opts{'s'})) {
  #handle source directory
  $sourceDirPath = $opts{'s'};
  if(!(-d $sourceDirPath)) { exit; }
}
elsif (defined($opts{'d'})) {
  #handle destination directory
  $destDirPath = $opts{'d'};
  if(!(-d $destDirPath)) { exit; }
}


# Open the source dir and grab the list of files
opendir(SOURCE_DIR, $sourceDirPath);
my @files = readdir(SOURCE_DIR);
closedir(SOURCE_DIR);


# Open the dest dir
opendir(DEST_DIR, $destDirPath);
# TODO: do something with the dest dir
closedir(DEST_DIR);



#while(<>) {
#  if(index($_, "Subject: ") == 0) {
#
#  }
#}
