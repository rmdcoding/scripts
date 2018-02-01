#!/usr/bin/perl -wT
use LWP::Simple;
use JSON;
use Data::Dumper;
use strict;

# Running this program  will make a google search and return the
# first page of results to the console. 

binmode STDOUT, ':utf8:';

my $query;
if (scalar @ARGV >= 2) { # Change the supplied arguments to fit url notation
    $query = join("+",@ARGV); 

}elsif(scalar @ARGV == 1){ # + not needed if only one search argument
    $query = $ARGV[0];

}else{ # Otherwise let the user know they need to supply a search query
    die "You need to supply a query search item: ./gsearch.pl <your search query here>\n";
}

# Build out our URL
my $engineID = "015871481813664578753:fxv371qv0hs";
my $apiKey = "AIzaSyDtYfbWYKqFA2tTR3TiFODXWen6fVYyD1E";
my $URL = "https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$engineID&q=$query";


# Pull data from the URL, save it to a variable, then decode that variable

my $data = get($URL);

# If Getting an ERROR, make sure you have LWP::Protocol::https installed
#  --- sudo cpan LWP::Protocol::https 
die "Could not get $URL! Please try a different search query" unless defined $data;

$data = decode_json($data);
                            

$query =~ s/\+/ /g; # Remove the + signs we inserted, so we can display the user the
                    # arguments that they submitted.


# Print out some Meta-data just for kicks
print"\n---------------BEEP BOOP---------------\n\n";
print "Search Time: $data->{searchInformation}->{searchTime}\n";
print "Total Results: $data->{searchInformation}->{totalResults}\n\n";
print "Displaying Google results for \"$query\": \n\n";


# Loop through the items array print the data appropriately. 
my $resultNum = 0;
foreach my $result (@{$data->{items}}){
    print "Result #$resultNum: \n";
    print "\t Title: $result->{title}\n";
    print "\t Link:  $result->{link}\n\n";
    $resultNum +=1;
}
