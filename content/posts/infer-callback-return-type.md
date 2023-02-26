---
title: Infer a function callback's return type
date: 2023-02-26 11:20:39
---

```ts
function fn<Fn extends () => any>(
  callback: Fn
): Fn extends () => infer R ? R : never {
  return callback();
}

const a = fn(() => 123);
const b = fn(() => "abc");
```
