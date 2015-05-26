#!/usr/bin/perl
undef $/;open$f,"t/spiral.t";($l=<$f>)=~s/\\n/\n/g;$l =~ s/\[.*?(\d+).*?(\d+)'?,\s*['"](.*?)['"]/$h{"$1 $2"}=$3/gsme;print $h{"@ARGV"}
