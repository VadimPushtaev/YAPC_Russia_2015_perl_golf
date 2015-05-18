#!/usr/bin/perl
$y=$i=$s=1;$r=\$x;map{$$y[$x]=$w[$x]=$_;$$r+=$s;${$r=($$r-=$s,$r)eq\$x?\$y:($s*=-1,\$x)}+=$s
if$$y[$x]||$x>=$n||$y>$m}1..($m=pop)*($n=pop);pop@w;printf join($",map'%'.-length.'s',@w,'').$/,@$_ for 1..$m