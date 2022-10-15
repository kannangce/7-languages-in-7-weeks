- `define_method` lets you dynamically adds methods to the current class.
- Syntax 
  ```
  define_method '<method_name_within_quotes>' <block_which will be the method definition>
  ```
- A [good read](https://stackoverflow.com/a/9057977/2046462) on `instance_eval` and `class_eval`. Also, reinforces that all 
  classes are instances. Where `instance_eval` will be evaluated on the (`Class`'s)instance representing that class. And 
  `class_eval` will be evaluated for the class and adding a method with `class_eval` will affect the instances created from 
  that class.  

Syntactic sugars:
 - `p` means print.


Interesting tools:
- https://github.com/mattbaker/ruby-heap-viz - helps to visualize ruby heap.