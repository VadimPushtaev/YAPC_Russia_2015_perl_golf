#!/usr/bin/perl
($a,$b)=@ARGV;$_=('1 'x$a++."0\n")x$b;@s=split;s/\d/$z++/ge;@r=(0,(1,$a,-1,-$a)x$b);for(@r){$c+=$_,$l[$c%$a]=length($d[$c]=++$e)while$s[$c+$_]--==1}s#\d+#$d[$&].' 'x($l[$&%$a]-length$d[$&])#ge;s# *$##gm;print
