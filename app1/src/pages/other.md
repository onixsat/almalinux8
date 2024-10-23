---
title: Some Markdown Page
layout: ../layouts/markdown.astro
---

# Code

The h1's should have some styles but they do not.

```js
var foo = 'bar';

function doSomething() {
  return foo;
}
```

# Paragraph

text here.

## h2!

This `h2` should be size 36, but it is not.

<style>
h2 {
  font-size: 96px;
}
</style>
