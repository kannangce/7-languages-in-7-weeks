General notes on Ruby,

- WRT syntax, we can say function(args) or function args. For ex, either add(1,2) or add 1,2. (Inspired by LISP?)
- There are symbols similar to  string but symbols will not create duplicates when a new each time a symbol is assigned or 
  mentioned.
- hashes = maps

## Blocks

- Blocks are anonymous functions which you can pass around and execute.
```
def call_block(&b)
   puts b.class
   b.call // We can also do yield here.
 end
 
 call_block {puts "this is like a lambda"}
 ``` 

- `block_given?` can be used inside a function to know if block has been passed to it.
- `Lambda` is a block stored into a variable for reuse.
- Procs are same but when you create it like `Proc.new {print "inside proc"}`
- To summarize, `Proc` is to define `Closures`. `Lambda` is a syntactic sugar for it and `Block` is an anonymous version of it.  
- Related reference can be found [here](https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/).

```
def call_proc_with_arg(&b)
   b.call(1)
end
 
call_proc_with_arg {|a| puts "printing the argument #{a}"}

lam = -> (a) { puts "printing the argument #{a}"}

call_proc_with_arg lam // This is not working. https://stackoverflow.com/questions/73601408/unable-to-call-ruby-lambda
```

## Parallels to Clojure

- Symbols in ruby are similar to Clojure keyword.
- Possible syntax to function calls are similar to Lisp in the sense, `name arg1,arg2`.
- Methods changing the states are similar to Clojure, ie., with a `!`. ie., `map` in list does normal mapping, whereas `map!` 
  changes the state.

## Syntactical observations:
- @ for attributes.
- @@ for static attributes.
- attr - defines variable with getter
- attr_accessor - defines variable with getter, setter
- To inherit `class classname < ParentClass`
  - To extend module
    ```
    class ClassName
        include Module1
        include Module2
    end
    ```

## Conceptual
- Modules can be used for multiple inheritance.
- Modules cannot be instantiated.