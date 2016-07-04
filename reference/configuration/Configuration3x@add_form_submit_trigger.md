---
layout: default
title: add_form_submit_trigger
---

This option enables you to turn on/off the onsubmit event listener. This feature adds an onsubmit event listener on all forms on the page; if a form is submitted a tinyMCE.triggerSave() JavaScript call will be executed. This function moves HTML content from the editor iframe to the hidden form element. This option is set to true by default.

## Example of usage of the add_form_submit_trigger option:

```html
tinyMCE.init({
	...
	add_form_submit_trigger : false
});

```