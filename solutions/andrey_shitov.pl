#!/usr/bin/perl
sub p{$L[$x]=$a[$x][$y]=++$n}($p,$q)=($w,$h)=@ARGV;$d=1;while($h*($i=$w--)){$x+=$d,p while$i--;$i=$h--;$y+=$d,p while--$i;$d=-$d}$L[$p]='';for$y(0..$q-1){printf"%-@{[1+length$L[$_]]}i",$a[$_][$y]for 1..$p;print$/}