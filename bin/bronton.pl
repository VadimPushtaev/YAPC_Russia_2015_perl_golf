#!/usr/bin/perl
($c,$m,$n)=(1,@ARGV);($r,$b)=($m-1,$n-1);$s=sub{for(@_[2..$#_]){$a[$_[0]//$_]->[$_[1]//$_]=$c++}};while($c<=$m*$n){&$s($u,$t++,$l..$r);&$s($r--,$u,$t..$b);&$s($u,$b--,reverse($l..$r));&$s($l++,$u,reverse($t..$b))}for$i(0..$n-1){for(0..$m-1){$w=0;map{$_>$w?($w=$_):0}@{$a[$_]};printf' %'.length($w).'s',$a[$_][$i]}print"\n"}
