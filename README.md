# md5-rfc1321
The MD5 message-digest algorithm from [RFC1321](https://www.ietf.org/rfc/rfc1321.txt), revised to be compiled on current systems.
Additional comments and annotations in the source code have also been added for educational purposes.

## Prerequisites
The project was built on a Fedora GNU/Linux 64-bit (x86_64) system using the following:
- gcc 12.2.1
- GNU Make 4.3

Different compiler and make utility versions should work too.

## Build
Use the following command to build the *mddriver* application and the *generate_T_table* application:
```sh
make
```

## Run
```sh
Usage: ./mddriver <arguments>
Arguments (may be any combination): 
 -h       - print usage information 
 -sstring - digests string 
 -t       - runs time trial 
 -x       - runs test script 
 filename - digests file 
 (none)   - digests standard input
```

For instance, to compute the md5 hash of a file:
```sh
./mddriver ~/sample-file.dat
MD5 (/home/vitoloper/sample-file.dat) = 7a33d0049e1e94637cb10bd8755c9cb1
```
The *generate_T_table* application is independent from the main *mddriver* application. It computes and prints the 64-element table *T[1 ... 64]* constructed from the sine function, whose values are used in the computation of the MD5 hash. See [RFC 1321](https://www.ietf.org/rfc/rfc1321.txt) for more details.

## Credits
Copyright (C) 1990-2 RSA Data Security Inc. (original MD5 message-digest algorithm)
Copyright (C) 2022 vitoloper (original code revisions and comments, generate_T_table.c)
