YAPC::Russia 2015 Perl golf
===========================

This is the **YAPC::Russia 2015** Perl golf competition repository. Here you can get tests, examples and description (this _README_).

Input
-----

Your script should accept two integer arguments:

```perl
perl script.pl 10 20
```

This first one is _width_, the second one is _height_.

Output
------

Your script should print the spiral matrix of numbers to _STDOUT_. The matrix size is set by the input params.

The first number is `1`. The order is clockwise. All columns must be separated by spaces (not tabs) and the gap between columns is exactly one space in the most narrow place. The align is left. Every string should be terminated by `\n`. No extra spaces are allowed.

```
1  2  3  4  5   6  7  8  9  10
36 37 38 39 40  41 42 43 44 11
35 64 65 66 67  68 69 70 45 12
34 63 84 85 86  87 88 71 46 13
33 62 83 96 97  98 89 72 47 14
32 61 82 95 100 99 90 73 48 15
31 60 81 94 93  92 91 74 49 16
30 59 80 79 78  77 76 75 50 17
29 58 57 56 55  54 53 52 51 18
28 27 26 25 24  23 22 21 20 19

```

Commit your solution
--------------------

Don't commit your solution to GitHub until the end of the competition. Don't send pull request either.

Send your script to mayperlgolf@mail.ru as an attachment. Please name it like `your_full_name.pl`.

Solutions will be accepted until _2015-05-17 18:30:00 (GMT+3)_.

How to test
-----------

Place your script in the `solutions` directory.

Run from the root of the repository:

`perl t/spiral.t` – check all solutions

`perl t/spiral.t pushtaev.pl` — check a single solution

`perl bin/result.pl` — show the result table
