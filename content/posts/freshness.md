---
title: Freshness
date: 2023-02-08 21:22:15
---

TypeScript provides a concept of Freshness (also called strict object literal checking) to make it easier to type check object literals that would otherwise be structurally type compatible.

```ts
function logIfHasName(something: { name?: string }) {
  if (something.name) {
    console.log(something.name);
  }
}
var person = { name: "matt", job: "being awesome" };
var animal = { name: "cow", diet: "vegan, but has milk of own species" };
var typo = { neme: "I just misspelled name to neme" };

logIfHasName(person); // okay
logIfHasName(animal); // okay

// @ts-expect-error
logIfHasName(typo);
// Argument of type '{ neme: string; }' is not assignable to parameter of type '{ name?: string | undefined; }'.
// Object literal may only specify known properties, and 'neme' does not exist in type '{ name?: string | undefined; }'.

// @ts-expect-error
logIfHasName({ neme: "I just misspelled name to neme" });
// Argument of type '{ neme: string; }' is not assignable to parameter of type '{ name?: string | undefined; }'.
// Object literal may only specify known properties, and 'neme' does not exist in type '{ name?: string | undefined; }'.
```

## References

- https://basarat.gitbook.io/typescript/type-system/freshness
