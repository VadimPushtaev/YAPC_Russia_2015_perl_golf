#!/usr/bin/perl
($x,$y)=@ARGV;$Y=$X=1;sub d{$Y+($a>2?-1:0or$a==1),$X+($a==2?-1:0or!$a)}map{$M{$Y,$X}=$_;$l=y///c;$l<$m[$X]or$m[$X]=$l;($K,$J)=&d;$a+=$a<3?1:-3if!$K|!$J|$K>$y|$J>$x|$M{$K,$J};($Y,$X)=&d}1..$x*$y;for$j(1..$y){printf$_<$x?"%-$m[$_]s ":"%s$/",$M{$j,$_}for 1..$x}
