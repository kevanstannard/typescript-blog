---
title: Branded types (mimick Nominal types)
date: 2022-12-15 08:05:50
---

```
typescript@4.9.4
```

```ts
export {};

type Brand<TBase, TBrand> = TBase & { __brand: TBrand };

type EmailAddress = Brand<string, "EmailAddress">;

function isEmailAddress(value: string): value is EmailAddress {
  return value.indexOf("@") >= 0;
}

function assertIsEmailAddress(value: string): asserts value is EmailAddress {
  if (!isEmailAddress(value)) {
    throw new Error(`"${value}" is not an email address`);
  }
}

function makeEmailAddress(value: string): EmailAddress | null {
  return isEmailAddress(value) ? value : null;
}

function sendWelcomeEmail(email: EmailAddress) {}

function signup(email: string) {
  assertIsEmailAddress(email);
  sendWelcomeEmail(email);
}

signup("hello");
```
