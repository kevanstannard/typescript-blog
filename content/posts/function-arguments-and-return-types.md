---
title: Function arguments and return types
date: 2022-12-16 08:55:34
---

```
typescript@4.9.4
```

```ts
type FunctionArgsType<T> = T extends (...args: infer Args) => never
  ? Args
  : never;

type FunctionReturnType<T> = T extends (...args: never[]) => infer Return
  ? Return
  : never;

function hello(name: string, age: number): string {
  return "";
}

type HelloArgs = FunctionArgsType<typeof hello>;
type HelloRrturn = FunctionReturnType<typeof hello>;
```
