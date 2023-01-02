#!/usr/bin/env io

//  Generated in conversation with chatGPT

Matrix := Object clone


Matrix dim := method(x, y,
  # Create an empty list
  list := List clone

  # Add x rows to the list, each containing y columns
  x repeat(
    row := List clone
    y repeat(row append(0))
    list append(row)
  )

  # Save the list as an instance variable
  self list := list
)

Matrix set := method(x, y, n,
  # Set the value at position (x, y) in the list
  self list  at(x) atPut(y, n)
)

# Test the Matrix prototype
matrix := Matrix clone
matrix dim(2, 2)
matrix set(0, 1, 5)
matrix print
