#!/usr/bin/env io
validateNumber := method(n, (n type == "Number") ifFalse(
  Exception raise("Invalid number " .. n asString)))


add := method(a, b ,
  validateNumber(a) and validateNumber(b)
  a + b
)

List myAverage := method(self reduce(a,b, add(a,b)) / self size())

list(1, 2, 3) myAverage() print // prints 2

list(1, "x", 3) myAverage() print // Throws exception