- Accessing files can be done as,
```
File.open("/Users/kannanr/Desktop/temp.txt", "w") {|f| f.write("hello")}
```

```
 f=File.open("/Users/kannanr/Desktop/temp.txt", "w")
 f.write("gallo")
 f.close()
```

The former takes care of closing the files as well. Can be proven by `lsof /|grep "temp.txt"`.

- Hash to list,
```
 {:a => 1, :b=>2}.to_a
// Returns [[:a, 1], [:b, 2]]
```

- List to hash,
```
[[1, 4] [1, 5]].to_h()
```
> ? Whereas not sure why [[1, 4] [1, 5]] is returning [[4]]. Some matrix operation?


- Array can be used as matrix with `transpose`
- As Stack with `push` and `pop`.
- As queue with `append` and `shift`.
- As set by calling `uniq` and supported functions like `union`.