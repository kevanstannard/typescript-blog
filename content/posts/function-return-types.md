---
title: Function Return Types
date: 2023-02-08 21:05:57
---

```ts
type User = {
  name: string;
  email: string;
};

type UserWithAge = {
  name: string;
  email: string;
  age: number;
};

function getUser1() {
  const user = {
    name: "John Doe",
    email: "john@example.com",
    age: 123,
  };
  return user;
}

const user1 = getUser1();
//    ^?
// const user1: {
//   name: string;
//   email: string;
//   age: number;
// }

function getUser2() {
  const user = {
    name: "John Doe",
    email: "john@example.com",
    age: 123,
  } as const;
  return user;
}

const user2 = getUser2();
//    ^?
// const user2: {
//   readonly name: "John Doe";
//   readonly email: "john@example.com";
//   readonly age: 123;
// }

function getUser3(): User {
  const user = {
    name: "John Doe",
    email: "john@example.com",
    age: 123,
  };
  return user;
}

const user3 = getUser3();
//    ^?
// const user3: User

function getUser4(): User {
  const user: User = {
    name: "John Doe",
    email: "john@example.com",
    // @ts-expect-error
    age: 123,
  };
  return user;
}

This error only occurs on object literals.
The extra field is immediately inaccessible.
The reason why only object literals are type checked this way is because in this case additional properties that aren't actually used is almost always a typo or a misunderstanding of the API.

const user4 = getUser4();
//    ^?
// const user4: User

function getUser5(): User {
  return {
    name: "John Doe",
    email: "john@example.com",
    // @ts-expect-error
    age: 123,
  };
}

const user5 = getUser5();
//    ^?
// const user5: User
```
