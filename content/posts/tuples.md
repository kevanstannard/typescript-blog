---
title: Tuples
date: 2023-02-09 06:59:50
---

```ts
// Mutable Tuple

type Color = [number, number, number];

const color1: Color = [0, 0, 0];

// @ts-expect-error
const color2: Color = [0, 0, 0, 0];

const color3: Color = [0, 0, 0];
color3.push(0);

const color4: Color = [0, 0, 0];
// @ts-expect-error
color4.push("hello");

// Tuple Mixed Type

type ItemCount = [string, number];

const itemCount0: ItemCount = ["hello", 0];

const itemCount1: ItemCount = ["hello", 0];
itemCount1.push("world");
itemCount1.push(1);
// @ts-expect-error
itemCount1.push(true);

// Const Tuple

const tupleColor = [0, 0, 0] as const;
// @ts-expect-error
tupleColor.push(0);

// Readonly Tuple

type ReadOnlyColor = readonly [number, number, number];

const readonlyColor1: ReadOnlyColor = [0, 0, 0];
// @ts-expect-error
readonlyColor1.push(0);
```

## References

- https://github.com/microsoft/TypeScript/issues/6325
