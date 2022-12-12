## Language mental model:

- Io is a proto-type based language. We have proto-types, cloning which we create another Prototype or Object.
- Basic building blocks
 . Prototype(types)
 . Object
 . Message
 . doMessage
 . Block(?)
 
## Delayed execution:

Let's create a custom method,

```
unless := method(
    (call sender doMessage(call message argAt(0))) ifFalse(
    call sender doMessage(call message argAt(1))) ifTrue(
    call sender doMessage(call message argAt(2)))
)
```

And call it

```
unless( 2==2 , some garbage you put here, "true condition" print)
```

"some garbage you put here" will not error out, because it is not getting executed at all. i.e., all the parameters that we put are messages, 
which will get executed only when the message hits the target object.
