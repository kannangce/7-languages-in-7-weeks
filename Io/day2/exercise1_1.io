#!/usr/bin/env io

findFib := method(n,
if(n <= 1,
    return n
)
findFib(n - 1) + findFib (n - 2)
)

findFib(10) println // prints 55
