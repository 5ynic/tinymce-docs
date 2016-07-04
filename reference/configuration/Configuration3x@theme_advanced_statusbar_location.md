---
layout: default
title: theme_advanced_statusbar_location
---

This option enables you to specify where the element statusbar with the path and resize tool should be located. This option can be set to "top", "bottom" or "none". The default value is set to "bottom". This option can only be used when the [theme](../configuration/Configuration3x@theme) is set to "advanced" and when the [theme_advanced_layout_manager](../configuration/Configuration3x@theme_advanced_layout_manager) option is set to the default value of "SimpleLayout".

Note: same behaviour with (undescribed) option theme_advanced_path_location, most likely the old name of same option?

## Example of usage of the theme_advanced_statusbar_location option:

```html
tinyMCE.init({
	...
	theme_advanced_statusbar_location : "bottom"
});
```