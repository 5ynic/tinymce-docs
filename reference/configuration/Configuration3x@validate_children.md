---
layout: default
title: validate_children
---

**Removed in 3.4**

This option is not enabled by default in 3.3.8, meaning that the Schema class never validates HTML structure.

When true, this option validates child elements html (similar to the old valid_child_elements configuration option). See classes/dom/Schema.js for the isValid function which is run when validate_children is true.

## Example of usage of the validate_children option:

```html
tinyMCE.init({
	...
	validate_children : true
});
```