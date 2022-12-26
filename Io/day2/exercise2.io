#!/usr/bin/env io
origDiv := Number getSlot("/")

Number / := method (i,
    if (i != 0, self origDiv(i), 0)
)

4/0 println // This should print 0