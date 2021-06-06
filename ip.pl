#!/usr/bin/perl
print "Please Enter the IP Adress : ";
$ip = <STDIN>;
if($ip =~ /(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\:\d{1,5})/){
	print "It is not format of IP Adress.\n";}
else{
	print "It is format of IP Adress.\n";
	}
