#!/usr/bin/perl -l
sub n{$A[$y][$x]=++$n;$!=length$n;$s[$x]=$!if$!>$s[$x]}($w,$h)=@ARGV;$k=1;$x=$X=$w-1;$Y=$h-1;for$x(0..$X){n}do{for(1..$Y){$y+=$k;n}$X*=!!$Y--;$k*=-1;for(1..$X){$x+=$k;n}}while$X--;for$B(@A){printf'%-*d ',$s[$_],$$B[$_]for 0..$w-2;print$$B[-1]}
