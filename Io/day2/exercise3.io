#!/usr/bin/env io
sum := method(values,
  total := 0
  if(values size > 0,
    total = values reduce(x, y, x + y)
  )
  total
)

sum(list(1, 2, 3, 4)) println # returns 10
sum(list(1, 2)) println      # returns 3
// sum(list(1))          # returns 1