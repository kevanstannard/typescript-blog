---
title: Spread
date: 2023-02-08 22:18:50
---

```ts
type User = {
  name: string;
  email: string;
};

type UserKey = keyof User;

type Person = {
  id: string;
  name: string;
};

type Attributes = {
  email: string;
  age: number;
  role: "user" | "admin";
};

const person: Person = {
  id: "123",
  name: "John Doe",
};

const attributes: Attributes = {
  email: "hello@example.com",
  age: 25,
  role: "admin",
};

const user: User = {
  ...person,
  ...attributes,
};

// Problem #1

type UserLabel = {
  [Key in keyof User]: string;
};
const userLabel: UserLabel = {
  name: "Name",
  email: "Email",
};

const keys = Object.keys(user) as UserKey[];
console.log(keys);
// [ 'id', 'name', 'email', 'age', 'role'  ]

keys.forEach((key) => {
  const label = userLabel[key];
  console.log(`${key}: ${label}`);
});

// Problem #2

// API accepts an object with fields including optional field `role`.
// We supply what looks like a User object, but the `role` is not visible.
fetch("https://api.example/update-user", {
  method: "POST",
  body: JSON.stringify(user),
});
```
