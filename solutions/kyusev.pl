#!/usr/bin/perl
($h=pop)--;($w=pop)--;sub e{$m[$t]='%-'.length($a[$_[0]][$t=pop]//=++$k).'d'}sub p{$m[-1]="%d\n";printf"@m",@$_ for@a;exit}for(;;){$l>$h&&p;e($l,$_)for$r..$w;e($_,$w)for$l..$h;e($h,$i--)for$r..($i=--$w);e($i--,$r)for++$l..($i=--$h);++$r>$w&&p}
