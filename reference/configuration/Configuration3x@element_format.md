---
layout: default
title: element_format
---

(Requires: 3.2)

This option enables control if elements should be in html or xhtml mode. xhtml is the default state for this option. This means that for example <br /> will be <br> if you set this option to "html".

## Example of usage of the element_format option

```html
// Output elements in HTML style
tinyMCE.init({
	...
	theme : "advanced",
	element_format : "html"
});

```