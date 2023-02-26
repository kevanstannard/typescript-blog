---
title: Remove optional
date: 2023-02-26 14:40:32
---

```ts
type MyRequired<T> = {
  [Key in keyof T]-?: T[Key];
};

type A = {
  a?: string;
  b: string;
};

type B = MyRequired<A>;
// type B = {
//   a: string;
//   b: string;
// };
```
