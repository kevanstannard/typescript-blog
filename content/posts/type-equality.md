---
title: Type equality
date: 2023-02-01 20:50:02
---

```
typescript@4.9.4
```

```ts
// prettier-ignore
export type Equals<X, Y> =
    (<T>() => T extends X ? 1 : 2) extends
    (<T>() => T extends Y ? 1 : 2) ? true : false;
```

## References

- [[Feature request]type level equal operator](https://github.com/Microsoft/TypeScript/issues/27024#issuecomment-421529650)
