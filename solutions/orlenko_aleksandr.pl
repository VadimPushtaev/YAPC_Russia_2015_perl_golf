#!/usr/bin/perl
($w,$h,$y,$z)=(@ARGV)x2;while($_!=$w*$h){$R[$i][$j]=++$_;$m[$j]=length;$e==1?($i==$z-1?do{$e=2;$z--;$j--}:$i++):$e==3?($i==$a?do{$e=0;$b++;$j++}:$i--):!$e?($j==$y-1?do{$e=1;$y--;$i++}:$j++):$j==$b?do{$e=3;$a++;$i--}:$j--}for$x(@R){print'',(map{$q=@$x[$_],' 'x($_<$w-1?$m[$_]+1-length$q:0)}0..$w-1),"\n"}