# TableScript

## TableScript is a simple ans useless esolang. Everything in TableScript is either a integer or a table

---

## How?

| .               | @          | /     | {}    | ()              | ,                         |
| --------------- | ---------- | ----- | ----- | --------------- | ------------------------- |
| Print Statement | Base Table | Index | Table | Wrap Expression | Split Elements in a Table |

P.S. Anything invalid (like indexing an integer or index out of range) will return 0, which will be ignored while printing

## Examples

#### Hello, world!

```
{
            108,        111,
.72, .101, .@/0, .@/0, .@/1, .44, .32, .119, .@/1, .114, .@/0, .100, .33
}
```

Shortened:

`{108,111,.72,.101,.@/0,.@/0,.@/1,.44,.32,.119,.@/1,.114,.@/0,.100,.33}`

Output:

```
Hello, world!

Table:
[108, 111, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]
```

(Tip: print statement returns -1)
