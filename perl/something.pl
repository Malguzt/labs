#!/usr/bin/perl

%names = ("Ju", "Juan", "Ma", "Manuel", "To", "Tomas", "Iv", "Ivan");

foreach $character (keys %names){
	print "$character\n";
}

foreach $name (values %names){
	print "$name\n";
}

$string = "Hola Mundo";

if($string =~ /^Hola/){
	print "Si existe\n";
}

$_ = $string;
s /\s/-/g;
print "$string\n";


$total = 0;
&getnumbers;

foreach $number (@numbers){
	$total += $number;
}
print ("El total es $total\n");

sub getnumbers {
	$line = <stdin>;
	$line =~ s/^\s+|\s*\n$//g;
	@numbers = split(/\s+/, $line);
}