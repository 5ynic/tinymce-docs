---
layout: default
title: body_id
---

(Requires: 3.0.2)

This option enables you to specify an id for the body of each editor instance. This id can then be used to do TinyMCE specific overrides in your [content_css](../configuration/Configuration3x@content_css).

## Examples of usage of the body_id option

This will add the same id to all editors that gets created by the init call.

```html
tinyMCE.init({
	...
	body_id : "my_id"
});
```

This will set specific ids on the bodies of specific editors.

```html
tinyMCE.init({
	...
	body_id : "elm1=my_id,elm2=my_id2"
});
```