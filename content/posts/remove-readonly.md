---
title: Remove readonly
date: 2023-02-26 14:42:42
---

```ts
type MyWritable<T> = {
  -readonly [Key in keyof T]: T[Key];
};

type A = {
  readonly a: string;
  b: string;
};

type B = MyWritable<A>;
// type B = {
//   a: string;
//   b: string;
// };
```
