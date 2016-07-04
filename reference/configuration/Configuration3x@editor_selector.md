---
layout: default
title: editor_selector
---

This option enables you to specify a CSS class name that will be required on the text areas that are to be converted. In order for this option to take effect, you must also have [TinyMCE:Configuration/mode](../configuration/Configuration3x@mode) set to specific_textareas. This enables you to select specific text areas for conversion by adding this CSS class name to the class attribute of the text area. If this option isn't set to a value, it will not have any effect, and the mode option will choose textareas instead. If you want all editors to be converted and just specific editors to be excluded, check the [editor_deselector](../configuration/Configuration3x@editor_deselector) option. This option also enables you to use regular expressions like myNoEditor|myNoOtherEditor or .*noeditor.

## Example of usage of the editor_selector option:

```html
tinyMCE.init({
	...
	mode : "specific_textareas",
	editor_selector : "mceEditor"
});
```
```html
tinyMCE.init({
	...
	mode : "specific_textareas",
	editor_selector : /(mceEditor|mceRichText)/
});
```

## Example of usage in the HTML:

```html
<textarea id="myarea1" class="mceEditor">This will be an editor.</textarea>
<textarea id="myarea2">This will NOT be an editor.</textarea>
```