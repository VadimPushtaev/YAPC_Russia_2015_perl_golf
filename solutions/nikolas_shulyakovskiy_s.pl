#!/usr/bin/perl
($n,$m)=@ARGV;@r=map[0,(-1)x$n],0..$m-1;for($q=$v=1;$n*$m>$_;){do{$r[$j][$v+($i+=$v)]+1}...do{$r[$v+($j+=$v)][$i]+1and$v*=-1};$r[$j][$i]=++$_;$z[$i]=length}$#z--;$#r=--$m;$q=print map{$_," "x(1+$z[$q++]-length)}@$_[1..$n],$/for@r
