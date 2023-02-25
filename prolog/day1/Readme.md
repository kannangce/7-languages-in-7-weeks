## Mental model:

### High-level:

- Define data
- Define rules
- Ask questions which can be inferred from data and rules

### Syntax:

- Each statement can either be a data or rule or question.
- Every statement ends with a `.` (dot).
- The unknown variables are typically starting with Capital letters(while writing rules and while asking questions).

### Details:

- You can use the same name to define both data and the rules. Prolog uses either of it when trying to solve a problem.

### Questions:

- What's the way to maintain the program and execute via file? For ex, I'm and to write rules in a file from repl, I able to include the file using `['file'].`. But there are differences in the way the code works from REPL and from file. For example, when there is a line in the file that says `color(red).` it is taken as data, whereas when I type the same in repl, it answers as no and not taken as a data.
