#!/usr/bin/perl
while (($word = <STDIN>))
{
	if(exists($search{"$word"})){
	$value = %search;
	$search{"$word"} += 1;
	}
	else{
	$search{"$word"} =1 ;
	}
}
while (($key,$value) = each %search){
	print "(frequency)$key";
	print ": $value \n";
}
