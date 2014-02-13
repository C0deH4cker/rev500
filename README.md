rev500
======

Source from the reverse engineering challenge I posted


This challenge was inspired by the recent blog post on how [x86 is turing complete without registers](http://mainisusuallyafunction.blogspot.com/2014/02/x86-is-turing-complete-with-no-registers.html).
I wanted to see how difficult it would be to reverse engineer an executable that didn't use registers.


To build this, you need to download and install [bfcomp](http://www.clifford.at/bfcpu/bfcomp.html).
Also, I have included my modified version of [rip](https://github.com/kmcallister/rip) here.
My modifications mostly consist of making it easier to build from a Makefile.

While creating this, I was writing and building rev500 on my Mac for convenience and copying it to my Ubuntu server to run it.
