---
"grant-config-example-grants": patch
---

Make `projectDescription` required in example-grant-with-auth to match the GAS schema. Leaving it blank previously caused a 400 on submission (`projectDescription must be string`). Adds an `Enter a project description` validation message and drops the misleading "Optional." hint.
