---
title: String tuple to union
date: 2023-02-19 08:35:40
---

```ts
type StringUnion<T extends readonly string[]> = T[number];

type XYZTuple = ["x", "y", "z"];

type XYZUnion = StringUnion<XYZTuple>;
// "x" | "y" | "z"
```
