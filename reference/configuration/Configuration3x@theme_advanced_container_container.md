---
layout: default
title: theme_advanced_container_container
---

This option should contain buttons/control that you wish to insert into the container, the button names available are the same as in the theme_advanced_buttons<1-3> option, but two extra controls are available when this layout option is used. These are "mceEditor" and "mceElementpath" and, if used, must be put inside their own container (like in the example below). The <container> part of this option should be replaced with a name within the theme_advanced_containers list. This option can only be used when theme is set to advanced and when the theme_advanced_layout_manager option is set to the value of "RowLayout".

## Example of usage of the theme_advanced_container_<container> option:

```js
tinyMCE.init({
	...
	theme_advanced_containers : "somecontainer1,editorcontainer,somecontainer2",
	theme_advanced_container_somecontainer1 : "bold,italic",
	theme_advanced_container_somecontainer2 : "strikethrough,cut",
	theme_advanced_container_editorcontainer : "mceEditor"
});
```
