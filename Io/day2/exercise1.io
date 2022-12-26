#!/usr/bin/env io

findFib := method(n,
if(n <= 1,
    return n
)
a := 0;b := 1;
for(i, 1, n,
// Putting a at the last so that that will be return statement of the for loop
    temp := a + b;a := b;b := temp;a;
    )
)

findFib(10) println // prints 55
